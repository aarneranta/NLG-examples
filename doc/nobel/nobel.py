import sys
sys.path.append('../facts2/')
from data_facts import *

import pgf

def string_expr(s):
    return pgf.readExpr(str('"' + s + '"'))

def string_year(s):
    return pgf.Expr('inYearDate',[pgf.readExpr(s[:4])])  # just the year part

def pname(win,just_family=False):
    name = win.winner
    if just_family:
        name = name.split()[-1]
    if win.sex == "female":
        return pgf.Expr('femalePName',[string_expr(name)])
    else:
        return pgf.Expr('malePName',[string_expr(name)])

def cname(factsys,s):
    try:
        return factsys.str2exp('CName',s)
    except:
        return pgf.Expr('stringCName',[string_expr(s)])

    
def winner_text(factsys,data,win):
    factsys.grammar.embed("G")
    import G

    name = G.pnameName(pname(win))
    priz = factsys.str2exp("Prize",win.prize)
    cit = cname(factsys,win.city)
    countr = cname(factsys,win.country)
             
    doc = G.OneSentenceDoc(G.ContinuousPastFactSentence(  ## for Ger
            G.ActFact(G.NameObject(name),
            G.winPrizeDateAct(priz,string_year(win.year))
            )))
    doc = G.AddSentenceDoc(doc,G.PunctualPastFactSentence(
            G.ActFact(G.PronObject(name),
            G.bornAct(string_year(win.born),cit,countr)
            )))
    if len(win)>7 and win.dead:
        try:
            fname =  G.pnameName(pname(win,just_family = True))
            doc = G.AddSentenceDoc(doc,G.PunctualPastFactSentence(
                G.ActFact(G.NameObject(fname),
                G.dieAct(string_year(win.dead))
                )))
        except:
            pass
        
##    print(doc)

    return doc, name, priz


def maximal(comparison,data):
    return max(data, key = comparison)


def nobel_texts(factsys,data):
    factsys.grammar.embed("G")
    import G

    def first_woman(p) :
        return min(
          filter(lambda w: w.sex == 'female' and w.prize == p, data),
          key = lambda d: int(d.year[:4])
          ).winner
    def youngest(p) :
        return min(
          filter(lambda w: w.prize == p, data),
          key = lambda d: int(d.year[:4]) - int(d.born[:4])
          ).winner

    
    docs = []
    for win in data:
        doc,name,priz = winner_text(factsys,data,win)
        if win.winner == first_woman(win.prize):
            doc = G.AddSentenceDoc(doc,G.ContinuousPastFactSentence(
                G.FirstInKindFact(
                    G.NameObject(name),
                    G.ModifierKind(G.woman_Kind, G.PunctualPastActModifier(G.winPrizeAct(priz)))
                    )))
        if win.winner == youngest(win.prize):
            if win.sex == 'female':
                winnerOf = G.femaleWinnerOfPrizeKind
            else:
                winnerOf = G.maleWinnerOfPrizeKind
            doc = G.AddSentenceDoc(doc,G.ContinuousPastFactSentence(
                G.YoungestInKindFact(
                    G.PronObject(name),
                    winnerOf(priz)
                    )))
            
        docs.append(doc)
            
    return docs
    

def main():
    gr = pgf.readPGF('Nobel.pgf')

    factsys = FactSystem('winner sex prize year born city country dead',
                          gr,
                          'NobelEng'
                        )
            
    factsys.run('../data/nobel.tsv',nobel_texts)

if __name__ == "__main__":
    main()

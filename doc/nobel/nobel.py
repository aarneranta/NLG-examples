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
             
    doc = G.OneSentenceDoc(G.PastFactSentence(
            G.ActFact(G.NameObject(name),
            G.winPrizeAct(priz,string_year(win.year))
            )))
    doc = G.AddSentenceDoc(doc,G.PastFactSentence(
            G.ActFact(G.PronObject(name),
            G.bornAct(string_year(win.born),cit,countr)
            )))
    if len(win)>7 and win.dead:
        try:
            fname =  G.pnameName(pname(win,just_family = True))
            doc = G.AddSentenceDoc(doc,G.PastFactSentence(
                G.ActFact(G.NameObject(fname),
                G.dieAct(string_year(win.dead))
                )))
        except:
            pass
        
    print(doc)

    return doc
    

def nobel_texts(factsys,data):
    texts = [winner_text(factsys,data,win) for win in data]
    return texts
    

def main():
    gr = pgf.readPGF('Nobel.pgf')

    factsys = FactSystem('winner sex prize year born city country dead',
                          gr,
                          'NobelEng'
                        )
            
    factsys.run('../data/nobel.tsv',nobel_texts)

if __name__ == "__main__":
    main()

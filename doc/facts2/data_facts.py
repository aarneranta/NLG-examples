import pgf
from extract_names import mkFun
from collections import namedtuple


class FactSystem:
    def __init__(self,tname,fnames,cat,coerc,dkey):
        self.tuplename = tname
        self.fieldnames = fnames
        self.catname = cat
        self.coercion = coerc
        self.datakey = dkey

    def get_data(self,filename):
        data = []
        Data = namedtuple(self.tuplename, self.fieldnames)
        file = open(filename)
        for line in file:
            fields = Data(*line.split('\t'))
            data.append(fields)
        return data
    
    def mkCatName(self,s):
        return mkApp(mkFun(s.strip(),self.catname),[])

    def mkName(self,s):
        return mkApp(self.coercion, [self.mkCatName(s)])

    def run(self,pgffile,datafile,facts):
        gr = pgf.readPGF(pgffile)
        data = sorted(list(self.get_data(datafile)))
        langs = list(gr.languages.values())
        for lang in langs:
            text = []
            for tree in facts(self,data):
                text.append(lang.linearize(tree))
            print('\n'.join(text))


def simple_facts(factsys,data):
    fields = factsys.fieldnames.split()
    
    def value(cfc):
        if cfc.isdigit():
            return mkApp('IntValue',[mkInt(cfc)])
        else:
            return mkApp('NameValue',[factsys.mkName(cfc)])
    
    facts = []
    for tuple in data:
        for (fc,cfc) in [(fields[i],list(tuple)[i]) for i in range(1,len(fields))]:
            facts.append(mkApp(
              'AtomicFact',
              [mkApp(fc + '_Attribute',[]),
              mkApp('NameObject', [factsys.mkName(factsys.datakey(tuple))]),
              value(cfc)]
              ))
    return facts

def mkApp(f,xs):
    return pgf.Expr(f,xs)

def mkInt(s):
    return pgf.readExpr(str(s))


def example_run():
    factsys = FactSystem('Country',
                             'country capital area population continent currency',
                             'CName', 'cName',
                             lambda t: t.country)
    factsys.run('Countries.pgf','countries.tsv',simple_facts)

if __name__ == "__main__":
    example_run()



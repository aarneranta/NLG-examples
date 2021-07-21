import pgf
from extract_names import mkFun
from collections import namedtuple


country_file = 'countries.tsv'

def get_data(tuplename,fieldsname,filename):
    data = []
    Data = namedtuple(tuplename, fieldsname)

    file = open(filename)
    for line in file:
        fields = Data(*line.split('\t'))
        data.append(fields)
    return data
     
def data_facts(cat,coercion,fieldnames,c):
  object = mkApp('NameObject', [mkName(cat,coercion,c.country)])
  fields = fieldnames.split()
  return [
    mkApp('AtomicFact',[mkApp(fc + '_Attribute',[]),object,mkApp('NameValue',[mkName(cat,coercion,cfc)])])
      for (fc,cfc) in
        [(fields[i],list(c)[i]) for i in range(1,len(fields))]
    ]

def mkApp(f,xs):
    return pgf.Expr(f,xs)

def mkInt(s):
    return pgf.readExpr(str(s))

def mkCatName(cat,s):
    return mkApp(mkFun(s.strip(),cat),[])

def mkName(cat,coercion,s):
    return mkApp(coercion, [mkCatName(cat,s)])


def run(pgffile,datafile,tuplename,fieldnames,cat,coercion,facts = data_facts):
    gr = pgf.readPGF(pgffile)
    data = sorted(list(get_data(tuplename, fieldnames, datafile)))
    langs = list(gr.languages.values())
    for lang in langs:
        text = []
        for c in data:
            for t in facts(cat,coercion,fieldnames,c):
                text.append(lang.linearize(t))
        print('\n'.join(text))

"""
def main():
    pgffile = 'Countries.pgf'
    datafile = 'countries.tsv'
    tuplename = 'Country'
    fieldnames = 'country capital area population continent ccode currency'
    cat = 'CName'
    coercion = 'cName'
    run(pgffile,datafile,tuplename,fieldnames,cat,coercion)

if __name__ == "__main__":
    main()
"""


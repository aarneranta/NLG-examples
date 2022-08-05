# quick and dirty way to generate a lexicon based on Wikidata labels
# design flaw: uses English strings instead of WD ids

def mkone(dict,line):
     ws = line.split()
     if len(ws) > 4 and ws[0] == 'lin' :
         en = ' '.join(ws[4:-1])[1:-1]
         fi = dict.get(en,en)
         lin = ws[:4] + ['"' + fi + '"',';']
         lin = ' '.join(lin)
         return lin
     else:
         return line

def main():
    labels = open('../data/alllabels.tsv')
    dict = {line.split('\t')[1].strip() : line.split('\t')[2].strip() for line in labels}
    eng = open('CountryNamesEng.gf')
    for line in eng:
        print(mkone(dict,line))

main()



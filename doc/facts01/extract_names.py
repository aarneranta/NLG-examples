import csv

labels_file = '../data/alllabels.tsv'
target_field = 4  # ID, Eng, Fin, Swe, Ger, Fre, Ita

name_cat = 'Name'

def abbreviate(s):
    return s.replace('http://www.wikidata.org/entity/', 'wd_')


def name_rules(id, lin):
    fun = abbreviate(id) + "_" + name_cat
    return (
      ' '.join(["fun", fun, ':', 'Name', ';']),
      ' '.join(["lin", fun, '=', '"'+lin+'"', ';'])
      )


def main():
  with open(labels_file) as file:
      namereader = csv.reader(file, delimiter='\t')
      for row in namereader:
          fun, lin = name_rules(row[0], row[target_field])
          print(fun)
          print(lin)


if __name__ == "__main__":
    main()



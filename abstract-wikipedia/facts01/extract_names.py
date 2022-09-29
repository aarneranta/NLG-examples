import csv
import json

# the old method
labels_file = '../data/alllabels.tsv'
target_field = 4  # ID, Eng, Fin, Swe, Ger, Fre, Ita

# new method, to be used for later languages
labels_json_file = '../data/hrv-names.json'

name_cat = 'Name'

def abbreviate(s):
    return s.replace('http://www.wikidata.org/entity/', 'wd_')


def name_rules(id, lin, cat='CName'):
    fun = abbreviate(id) + "_" + cat
    return (
      ' '.join(["fun", fun, ':', cat, ';']),
      ' '.join(["lin", fun, '=', 'mk'+cat, '"'+lin+'"', ';'])
      )


def main_csv():
  with open(labels_file) as file:
      namereader = csv.reader(file, delimiter='\t')
      for row in namereader:
          fun, lin = name_rules(row[0], row[target_field])
          print(fun)
          print(lin)


def main_json():
    print('json')
    with open(labels_json_file, 'r', encoding="utf-8") as lines:
        for line in lines:
            data = json.loads(line)
            for country in data:
                for c in ['country', 'capital', 'continent']:
                    fun, lin = name_rules(country[c], country[c + 'Label'])
                    print(fun)
                    print(lin)
                fun, lin = name_rules(country['currency'], country['currencyLabel'],
                                      cat='CurrencyName')
                print(fun)
                print(lin)


          
if __name__ == "__main__":
    main_json()



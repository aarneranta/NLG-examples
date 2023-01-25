import requests
import json

# produce a json dump about Wikidata properties: id, datatype, labels, description, aliases

# the languages in which we collect labels and aliases
LANG_CODES = {'en', 'fi', 'sv', 'bg', 'de', 'fr', 'hr', 'it', 'ar'}

# data for a list of properties:
# https://www.wikidata.org/w/api.php?action=wbgetentities&format=json&ids=P6%7CP27%7CP28%7CP29&formatversion=2

def select_lang_values(entry, langs=LANG_CODES):
    return {lang: entry[lang]['value']
                for lang in entry
                if lang in langs
           }


def select_lang_lists(entry, langs=LANG_CODES):
    return {lang: [x['value'] for x in entry[lang]]
                for lang in entry
                if lang in langs
           }


def properties_url(ps):
    return ('https://www.wikidata.org/w/api.php?action=wbgetentities&format=json&ids=' +
            '%7C'.join(ps) +
            '&formatversion=2'
            )


def get_properties_dump(begin=1, end=12001, batch_size=50):
  for n in range(begin, end, batch_size):
    r = requests.get(properties_url(['P'+str(k) for k in range(n, n+batch_size)]))
    j = r.json()
    for e in j.get('entities', []):
        je = j['entities'][e]
        if 'missing' not in je:
            je = {'id': je['id'],
                  'datatype': je['datatype'],
                  'labels': select_lang_values(je['labels']), 
                  'description': je['descriptions'].get('en', {}).get('value', None),
                  'aliases': select_lang_lists(je['aliases'])
                  }
            print(json.dumps(je, ensure_ascii=False))

"""
example line generated:
{"id": "P30", "datatype": "wikibase-item", "labels": {"fr": "continent", "fi": "maanosa", "en": "continent", "sv": "kontinent", "it": "continente", "de": "Kontinent", "bg": "континент", "hr": "kontinent"}, "description": "continent of which the subject is a part", "aliases": {"de": ["Kontinente", "Kontinent ist"]}}
"""

if __name__ == '__main__':
    get_properties_dump()
    

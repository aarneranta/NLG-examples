# strip data cells, round float values to integers

cs = open('countries.tsv')

for c in cs:
    vs = c.split('\t')
    ws = []
    for v in vs:
      v = v.strip()
      if v[0].isdigit():
        v = str(int(round(float(v))))
      ws.append(v)
    print('\t'.join(ws))
    

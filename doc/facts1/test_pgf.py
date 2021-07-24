print('>>> import pgf')
import pgf

print(">>> gr = pgf.readPGF('Facts.pgf')")
gr = pgf.readPGF('Facts.pgf')

print('>>> print(list(gr.languages.keys()))')
print(list(gr.languages.keys()))

print(">>> eng = gr.languages['FactsEng']")
eng = gr.languages['FactsEng']

print(">>> attr = pgf.Expr('area_Attribute',[])")
attr = pgf.Expr('area_Attribute',[])

print(">>> eng.linearize(attr)")
print(eng.linearize(attr))

print(">>> obj = pgf.readExpr('NameObject (StringName \"France\")')")
obj = pgf.readExpr('NameObject (StringName "France")')

print(">>> val = pgf.readExpr('123')")
val = pgf.readExpr('123')

print(">>> fact = pgf.Expr('AttributeFact',[attr,obj,val])")
fact = pgf.Expr('AttributeFact',[attr,obj,val])

print(">>> print(fact)")
print(fact)

print(">>> print(eng.linearize(fact))")
print(eng.linearize(fact))



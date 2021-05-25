import pgf
from collections import namedtuple

def get_countries():
    countries = []
    Country = namedtuple('Country','country capital area population continent currencyCode currencyName')
    file = open('countries.tsv')
    lines = file.readlines()
    file.close()
    for line in lines[1:]:
        fields = Country(*line.split('\t'))
        countries.append(fields)
    return countries


def continent_article(countries,isin,cont):
  cocountries = [c for c in countries if isin(c)]
  return mkApp ("ContinentArticle", [
    constant("Continent",cont),
    mkInt(len(cocountries)),
    mkInt(sum([sint(c.area) for c in cocountries])),
    mkInt(sum([sint(c.population) for c in cocountries])),
    mkInt(average([sint(c.area) for c in cocountries])),
    mkInt(average([sint(c.population) for c in cocountries])),
    constant("Country", max(cocountries, key=lambda c: float(c.population)).country),
    constant("Country", min(cocountries, key=lambda c: float(c.population)).country),
    constant("Country", max(cocountries, key=lambda c: float(c.area)).country),
    constant("Country", min(cocountries, key=lambda c: float(c.area)).country)
    ])

     
def country_article(countr):
  return mkApp ("CountryArticle", [
    constant( "Country", countr.country),
    constant("Continent", countr.continent),
    constant("Capital", countr.capital),
    mkInt(countr.area),
    mkInt(countr.population),
    constant("CurrencyName", countr.currencyName),
    constant("CurrencyCode", countr.currencyCode)
    ])

def mkApp(f,xs):
    return pgf.Expr(f,xs)


def mkInt(s):
    return(pgf.readExpr(str(s)))


def constant(cat,f):
    return mkApp(mkFunId(cat,f),[])


def mkFunId(cat,fun):
    return '_'.join(fun.split() + [cat]) ###


def average(xs):
    return sum(xs)//len(xs)


def sint(s):
    if s.isdigit():
        return int(s)
    else:
        return round(float(s))


def main():
    countries = get_countries()
    continents = {c.continent for c in countries}
    
    worldtree = continent_article(countries, (lambda x: True), "world")
    continenttrees = [continent_article(countries, (lambda x: x.continent == c), c) for c in continents]
    countrytrees = [country_article(c) for c in countries]

    gr = pgf.readPGF("Countries.pgf")
    langs = list(gr.languages.values())
    langnum = 1

    for lang in langs:
        text = []
        text.append(lang.linearize(worldtree))
        for tree in continenttrees:
            text.append(lang.linearize(tree))
        for tree in countrytrees:
            text.append(lang.linearize(tree))
        file = open("countries_" + str(langnum) + ".html", "w")
        file.write('\n<p>'.join(text))
        file.close()
        langnum += 1



    
if __name__ == "__main__":
    main()







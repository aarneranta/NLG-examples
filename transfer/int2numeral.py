import pgf

"""
to test:
    echo "pg -pgf" | gf -run alltenses/NumeralEng.gfo
or some other language, then
    python3 int2numeral.py
which waits for numeral input.
If you just press <enter>, a predefined list of samples is converted.
    
to use in your own program: see int2numeral_example.py
"""

def int2numeral_parts(ds):
    if not (0 < len(ds) < 7):
        print("input length not in range 1--6:", ds)
    elif ds[0] == '0':
        return int2numeral_parts(ds[1:])
    elif ds == '1':
        whole, major, minor, unit = "pot2as3", "pot1as2", "pot0as1", const("pot01")
    elif len(ds) == 1:
        whole, major, minor, unit = "pot2as3", "pot1as2", "pot0as1", app("pot0",[nd(ds)])
    elif ds == '10':
        whole, major, minor, unit = "pot2as3", "pot1as2", "id",      const("pot110")
    elif ds == '11':
        whole, major, minor, unit = "pot2as3", "pot1as2", "id",      const("pot111")
    elif len(ds) == 2 and ds[0] == '1':
        whole, major, minor, unit = "pot2as3", "pot1as2", "id",      app("pot1to19",[nd(ds[1])])
    elif len(ds) == 2 and ds[1] == '0':
        whole, major, minor, unit = "pot2as3", "pot1as2", "id",      app("pot1",[nd(ds[0])])
    elif len(ds) == 2:
        _,_,_,unit = int2numeral_parts(ds[1])
        whole, major, minor, unit = "pot2as3", "pot1as2", "id",      app("pot1plus",[nd(ds[0]),unit])
    elif len(ds) == 3 and ds[1:] == '00':
        _,_,_,unit = int2numeral_parts(ds[0])
        whole, major, minor, unit = "pot2as3", "id",      "id",      app("pot2", [unit])
    elif len(ds) == 3:
        _,_,_,unit1 = int2numeral_parts(ds[0])
        _,_,minor2,unit2 = int2numeral_parts(ds[1:])
        whole, major, minor, unit = "pot2as3", "id",      "id",      app("pot2plus", [unit1, app(minor2,[unit2])])
    else:
        fst,snd = ds[:len(ds)-3],ds[len(ds)-3:]
        if snd == '000':
            _,major,minor,unit = int2numeral_parts(fst)
            whole, major, minor, unit = "id", "id", "id", apps(["pot3",major,minor],unit)
        else:
            _,major1,minor1,unit1 = int2numeral_parts(fst)
            _,major2,minor2,unit2 = int2numeral_parts(snd)
            part1 = apps([major1,minor1], unit1)
            part2 = apps([major2,minor2], unit2)
            whole, major, minor, unit = "id","id", "id", app("pot3plus",[part1,part2])

    return whole, major, minor,unit

    
def int2numeral_tree(tree):
    up = tree.unpack()
    if type(up) == int:
        ds = str(up)
    whole,major,minor,unit = int2numeral_parts(ds)
    return apps(["num",whole,major,minor],unit)

    
def int2numeral_in_tree(int_numeral_dict, tree):
    fun, args = tree.unpack()
    if fun in int_numeral_dict and len(args) == 1:
        f_numeral = int_numeral_dict[fun]
        return pgf.Expr(f_numeral, [int2numeral_tree(args[0])])
    else:
        return pgf.Expr(fun, [int2numeral_in_tree(int_numeral_dict, t) for t in args])


############ auxiliaries #####################

def app(f,xs):
    if f=="id":
        return xs[0]
    else:
        return pgf.Expr(f,xs)

def apps(fs,x):
    fs.reverse()
    def rapps(hs):
        exp = x
        for h in hs:
            exp = app(h,[exp])
        return exp
    return rapps(fs)


def const(f):
    return app(f,[])

def nd(d):
    return const("n"+d)


############ test #####################

def main():
    gr = pgf.readPGF("Numeral.pgf")
    eng = list(gr.languages.values())[0]
    n = input()
    if n:
        ns = [int(n)]
    else:
        ns = [1,2,8,10,11,20,21,40,95,100,101,234,1000,1001,2021,630511]
    for n in ns: 
        print(n, eng.linearize(int2numeral_tree(pgf.readExpr(str(n)))))


if __name__ == "__main__":
    main()



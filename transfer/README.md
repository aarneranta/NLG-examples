# transfer Int literals to RGL Numerals in Haskell and Python

## Haskell

Example run:
```
$ gf -make Int2NumeralExampleEng.gf
$ echo "you have 8760 messages" | runghc Int2NumeralExample.hs
you have eight thousand seven hundred and sixty messages
```
To use in your own application, follow `Int2NumeralExample.{gf,hs}`:
- gf: write a grammar that extends `Numeral` and contains a pair of functions `f_int : Int -> A`, `f_numeral : Numeral -> A` returning the same value type `A`
- hs: import `PGF` and `Int2Numeral`, performing transfer with `int2numeralInTree (mkCId f_int) (mkCId f_numeral)`

The transfer function converts all occurrences of `f_int n` to `f_numeral n*` where `n*` is the conversion of Int to Numeral.


## Python

Example run:
```
$ gf -make Int2NumeralExampleEng.gf
$ echo "you have 8760 messages" | python3 int2numeral_example.py
you have eight thousand seven hundred and sixty messages
```
To use in your own application, follow the example files:
- `Int2NumeralExample.gf`:: a grammar that extends `Numeral` and contains a pair of functions `f_int : Int -> A`, `f_numeral : Numeral -> A` returning the same value type `A`
- `int2numeral_example.py`: import `pgf` and `int2numeral`, performing transfer with `int2numeral_in_tree(f_int,f_numeral,tree)`

The transfer function converts all occurrences of `f_int n` to `f_numeral n*` where `n*` is the conversion of Int to Numeral.


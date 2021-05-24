# transfer Int literals to RGL Numerals

Example run:
```
$ gf -make Int2NumeralExampleEng.gf
$ echo "you have 8760 messages" | runghc Int2NumeralExample.hs
you have eight thousand seven hundred and sixty messagesç∂
```
To use in your own application, follow `Int2NumeralExample.{gf,hs}`:
- gf: write a grammar that extends `Numeral` and contains a pair of functions `f_int : Int -> A`, `f_numeral : Numeral -> A` returning the same value type `A`
- hs: import `PGF` and `Int2Numeral`, performing transfer with `int2numeralInTree (mkCId f_int) (mkCId f_numeral)

The transfer function converts all occurrences of `f_int n` to `f_numeral n*` where `n*` is the conversion of Int to Numeral.


from int2numeral import int2numeral_in_tree
import pgf

# to test: echo "you have 500 messages" | python3 int2numeral_example.py

def main():
    gr = pgf.readPGF("Int2NumeralExample.pgf")
    eng = list(gr.languages.values())[0]
    _,tree = eng.parse(input()).__next__()
    tree = int2numeral_in_tree("IntNumber","NumeralNumber",tree)
    print(eng.linearize(tree))


main()


from int2numeral import int2numeral_in_tree
import pgf

# to test: echo "you have 500 messages" | python3 int2numeral_example.py

int_numeral_dict = {"IntNumber": "NumeralNumber", "IntRank": "NumeralRank"}

def main():
    gr = pgf.readPGF("Int2NumeralExample.pgf")
    eng = list(gr.languages.values())[0]
    _,tree = eng.parse(input()).__next__()
    tree = int2numeral_in_tree(int_numeral_dict, tree)
    print(eng.linearize(tree))


main()


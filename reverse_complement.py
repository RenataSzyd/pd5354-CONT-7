import sys
from Bio.Seq import Seq

def reverse_complement(sequence):
    seq = Seq(sequence)
    return seq.reverse_complement()

if __name__ == "__main__":
    if len(sys.argv) != 2:
        print("Usage: python reverse_complement.py <sequence>")
        sys.exit(1)
    
    sequence = sys.argv[1]
    result = reverse_complement(sequence)
    print(f"Reverse complement of {sequence} is {result}")


import sys
from itertools import product

letters = [i for i in 'ACEHJKLMNPRWXY']
digits = [i for i in '123456789']
structure = [letters, letters, digits, digits, digits, digits, letters, letters, digits]
combinations = product(*structure)
for i in range(int(sys.argv[1]) - 1):
    next(combinations)
sys.stdout.write(''.join(next(combinations)))

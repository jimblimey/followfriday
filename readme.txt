Program flow:
------------
Lines 1-6, 8 Setup
Line 7 Unused function from previous version
Lines 10-100 Random person selection
Lines 200-560 Setup arrays and UDGs
Lines 480-550 Unused nob UDG I haven't had the guts to use
Lines 600-630 Random colour selection for person and cursor, and drawing routine

Variables:
---------
n$(m) = array of names
i(m) = array of bytes to keep track if a particular person has already been selected1070
m = number of people
x = main loop counter
c = random number within range of m
s$ = currently selected person with custom @ UDG plopped in front
cl = random colour for current person
lc = last colour used
r = draw loop counter
cr = random colour for "cursor"

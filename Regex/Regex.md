### . = any single character(except newline):

    text = "hello"
    pattern = "h.llo"

    match = re.search(pattern, text)

    if match:
        print("Matched:", match.group())
    else:
        print("No match.")

### ^ = match at start:

    text = "hi there"
    pattern = "^hi"

    match = re.search(pattern, text)

    if match:
        print("This example starts with hi!")
    else:
        print("Does not start with hi.")

### $ = match at end:

    text = "goodbye"
    pattern = "bye$"

    match = re.search(pattern, text)

    if match:
        print("Ends with bye!")
    else:
        print("Does not end with bye.")

### [] = any character from a set

    text = "cat"
    pattern = "c[aeiou]t"  # matches 'cat', 'cet', 'cit', 'cot', 'cut'

    match = re.search(pattern, text)

    if match:
        print("Matched:", match.group())
    else:
       print("No match.")
 
### \d = any digit:

    text = "Room 5A"
    pattern = r"\d"  # r = raw string, explained below

    match = re.search(pattern, text)

    if match:
        print("Found digit:", match.group())
    else:
        print("No digit found.")

### \d+ = One or more digits:

    text = "My code is 1337"
    match = re.search(r"\d+", text)

    if match:
        print("Found number:", match.group())

### \w = any word character:

    text = "1hello!"
    pattern = r"\w"

    match = re.search(pattern, text)

    if match:
        print("First word character:", match.group())
    else:
        print("No word character.")

### \w+ = Matches one or more word characters:

    text = "reymond"
    pattern = r"\w+"

    match = re.search(pattern, text)
    print(match.group())

### ? = Optional (0 or 1):

    url = "https://reymond.com"
    pattern = r"https?://"

    match = re.search(pattern, url)
    print("Matched:", match.group())  # → https://

### \b =  a word boundary anchor:

    text = "say hello helloo adahello hello123 @@hello hello!"

    print("1:", re.findall(r"\bhello", text))   # Matches 'hello' at word start
    print("2:", re.findall(r"hello\b", text))   # Matches 'hello' at word end
    print("3:", re.findall(r"\bhello\b", text)) # Matches exact word 'hello'


### Summary:

    Symbol     Meaning                                Example / Notes
    
    .          Any single character (except newline)   # h.llo → hello, h3llo, etc.
    ^          Start of a string                       # ^hi → matches "hi there", not "say hi"
    $          End of a string                         # bye$ → matches "goodbye"
    []         Character set                           # [aeiou] → matches any vowel
    \d         Any digit                               # 0–9
    \d+        One or more digits                      # 1337, 404
    \w         Any word character (letter/num/_)       # a-z A-Z
    \w+        One or more word characters             # reymond123
    ?          Optional (0 or 1)                       # colou?r → color / colour
    \          Escape special characters               # \.com → matches .com literally
    +          One or more                             # a+ → a, aa, aaa, etc.
    \b         Word boundary anchor                    # \bword\b → matches "word", not "sword"
    ()         Grouping / capture                      # (cat|dog) → matches "cat" or "dog"
    {}         Specific count or range                 # \d{4} → exactly 4 digits, \d{2,5}
    |          OR (alternation)                        # cat|dog → either "cat" or "dog"
    *          Zero or more                            # a* → "", a, aa, aaaa, etc.

import re # regular expressions (regex) module

with open("preproinsulin-seq.txt") as f:
    data = f.read()

# remove ORIGIN first
data = data.replace('ORIGIN', '')
# remove everything that's NOT a letter
cleaned = re.sub(r'[^a-zA-Z]', '', data)

print(cleaned)
print("Length:", len(cleaned))
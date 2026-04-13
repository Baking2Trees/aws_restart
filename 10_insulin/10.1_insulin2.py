import re

with open('preproinsulin-seq.txt') as f:
    data = f.read()
    
# data = data.replace('ORIGIN', '')
cleaned = re.sub(r'ORIGIN|[^a-zA-Z]', '', data)

print(cleaned)
print(len(cleaned))

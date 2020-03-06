#this creates a lilypond book of multiple scores to STDOUT
# (redirect to a .ly file and run lilypond on it)

#a csv file contains all the data for all the scores
#  Each line contains:
#   the notes of that score
#   the name of the template used to make that score


print(
r"""\version "2.19.65"

\book {


""")


from string import Template ; 
from collections import namedtuple
import csv

emp = namedtuple('Section', 'mytemplate, mydate, myopus, mykey, mytime, mycompname')

def templateFromFile(fileName):
    with open(fileName, 'r') as f:
      myfile = f.read()
    return Template(myfile)

def readMusic(fileName):
    with open(fileName, 'r') as f:
      myLines = f.read()
    return myLines.rstrip('\n')

#t = templateFromFile('comp103_template.txt')

for emp in map(emp._make, csv.reader(open("comp_data.csv", "r"), quoting=csv.QUOTE_ALL)):
    t = templateFromFile(emp.mytemplate)

    upFile  = emp.mycompname + '_part_1.ly'
    upper = readMusic(upFile)
    
    lower = ""
    lowFile = emp.mycompname + '_part_2.ly'
    if emp.mytemplate != "comp101_template.txt": 
      lower = readMusic(lowFile)

    m = t.substitute(mydate=emp.mydate, myopus=emp.myopus, mykey=emp.mykey, mytime=emp.mytime, myupper=upper, mylower=lower)
    print(m)


# all the scores are written out. Close the lilypond book with a brace
print("\n\n}")

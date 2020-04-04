import re
import os
import sys

php_class  =sys.stdin

modified = []
for line in php_class.split('\n'):
    if 'private $' in line or 'public $' in line:
        #print (line)
        #pure = line
        pure =  re.sub(r"[\n\t\s]*", "", line)[8:-1]; # strip private and ;
        #print (pure)
        docBlocks = []
        modified.append('')
        modified.append('/**')
        modified.append(' * What does this variable do?')
        modified.append(' * @var string')
        modified.append('*/')
        modified.append(line)
        modified.append('')



    else:
        modified.append(line)

print (os.linesep.join(modified))

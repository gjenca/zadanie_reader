>>> import hashlib
>>> m=hashlib.md5()
>>> m.update(b'prvy riadok')
>>> m.update(b'aj newline\n')
>>> m.update(b'nieco ine')
>>> m.hexdigest()
'c19c1322a38085fc0ae2ea60a87c1429'


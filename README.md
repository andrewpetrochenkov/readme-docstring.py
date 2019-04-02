<!--
https://pypi.org/project/readme-generator/
https://pypi.org/project/python-readme-generator/
-->

[![](https://img.shields.io/pypi/pyversions/readme-docstring.svg?longCache=True)](https://pypi.org/project/readme-docstring/)
[![](https://img.shields.io/pypi/v/readme-docstring.svg?maxAge=3600)](https://pypi.org/project/readme-docstring/)
[![Travis](https://api.travis-ci.org/looking-for-a-job/readme-docstring.py.svg?branch=master)](https://travis-ci.org/looking-for-a-job/readme-docstring.py/)

#### Installation
```bash
$ [sudo] pip install readme-docstring
```

#### Classes
class|`__doc__`
-|-
`readme_docstring.Classes` |`classes` table class. attrs: `classes`
`readme_docstring.Functions` |`functions` table class. attrs: `functions`
`readme_docstring.Table` |abstract table class. attrs: `headers`, `objects`

#### Functions
function|`__doc__`
-|-
`readme_docstring.getclasses()` |return a list of classes defined in `__all__`
`readme_docstring.getdoc(obj)` |return first line of an object docstring
`readme_docstring.getfunctions()` |return a list of functions defined in `__all__`
`readme_docstring.getmembers()` |return all the members defined in `__all__` in a list of (name, value) pairs
`readme_docstring.getmodules()` |return a list of modules
`readme_docstring.getspec(routine)` |return a string with Python routine specification

#### Executable modules
usage|`__doc__`
-|-
`python -m readme_docstring.classes` |generate `classes` table
`python -m readme_docstring.functions` |generate `functions` table

#### Examples
example with [readme-generator](https://pypi.org/project/readme-generator/)
```python
class Readme(readme_generator.Readme):
    order = [..., "classes", "functions", ...]

    def classes(self):
        classes = self.getclasses()
        return readme_docstring.Classes(classes)

    def functions(self):
        functions = self.getfunctions()
        return readme_docstring.Functions(functions)
```

custom table
```python
class ExecutableModules(readme_docstring.Table):
    columns = ["usage", "`__doc__`"]

    def __init__(self,modules):
        self.objects = modules

    def getleftcell(self, obj):
        default = "python -m %s" % obj.__name__.replace(".__main__", "")
        return "`%s`" % getattr(obj, "USAGE", default)
```

<p align="center">
    <a href="https://pypi.org/project/python-readme-generator/">python-readme-generator</a>
</p>
<!--
https://readme42.com
-->


[![](https://img.shields.io/pypi/v/readme-docstring.svg?maxAge=3600)](https://pypi.org/project/readme-docstring/)
[![](https://img.shields.io/badge/License-Unlicense-blue.svg?longCache=True)](https://unlicense.org/)
[![](https://github.com/andrewp-as-is/readme-docstring.py/workflows/tests42/badge.svg)](https://github.com/andrewp-as-is/readme-docstring.py/actions)

### Installation
```bash
$ [sudo] pip install readme-docstring
```

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
    <a href="https://readme42.com/">readme42.com</a>
</p>
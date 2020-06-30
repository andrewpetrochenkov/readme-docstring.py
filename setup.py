import setuptools

setuptools.setup(
    name='readme-docstring',
    install_requires=open('requirements.txt').read().splitlines(),
    packages=setuptools.find_packages()
)

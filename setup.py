from setuptools import setup

setup(
    name='PyTgSend',
    version='1.0',
    description='Lightweight function to send telegram messages',
    url='git@github.com:aptac01/PyTgSend.git',
    author='Alex Tamilin',
    author_email='popovalex402@gmail.com',
    packages=['PyTgSend'],
    install_requires=[
        'requests',
    ],
    zip_safe=False
)

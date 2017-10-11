# ML-DA
Repository for "Machine Learning and Data Analytics" course @ university of Trieste, A.Y. 2017/2018

Datasets usually are either provided along with the python jupyter notebooks, or they are taken from the repository [ferdas's `faraway` repository](https://github.com/ferdas/faraway_csv), which is a collections of datasets converted from the [`faraway` R package](https://cran.r-project.org/web/packages/faraway/).


## "First time only" config

Python 3 is required: if you installed python 3 using your distribution package manager or by compiling it from source you should already have `pip3` installed, otherwise install it following [these instructions](https://pip.pypa.io/en/stable/installing/).

I suggest to use a virtual-environment (virtualenv) to set up a dedicated sandbox for this project.
Moreover, to better manage different virtualenvs, I suggest to use [virtualenvwrapper](https://virtualenvwrapper.readthedocs.io/en/latest/index.html).

These are the instructions to follow:

1. install *virtualenvwrapper* for every user on your pc, __with root permissions__:

    # pip3 install virtualenvwrapper

2. add the needed config to your `.profile` or `.bash_profile` file::

```
#!bash

VIRTUALENVWRAPPER_PYTHON=/usr/bin/python3
export WORKON_HOME=$HOME/.venvs
source $(which virtualenvwrapper.sh)
```

3. then reload your `.profile` or `.bash_profile` file:

    $ source ~/.bashrc

4. and eventually create a virtualenv for this project, using python3 as the python executable:

    $ mkvirtualenv -p $(which python3) ML_DA

## Normal usage

For a daily usage, activate the virtualenv created before:

    $ workon ML_DA

Now you can manage it as a normal virtualenv.

To install the requirements [use pip](https://pip.pypa.io/en/stable/) (and a virtualenv isolated sandbox is suggested to avoid messing up different packages from different projects), paste:

    $ pip3 install -r python_requirements.txt


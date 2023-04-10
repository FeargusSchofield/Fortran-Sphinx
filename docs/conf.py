import os
import sys

#sys.path.insert(0, os.path.abspath('../..'))

# -- General configuration ------------------------------------------------

extensions = [
    'sphinx.ext.autodoc',
    'sphinx.ext.doctest',
    'sphinx.ext.napoleon',
    'sphinx.ext.viewcode',
    'sphinxfortran.fortran_domain',
    'sphinxfortran.fortran_autodoc',
]


templates_path = ['_templates']
exclude_patterns = ['_build', 'Thumbs.db', '.DS_Store']
source_suffix = '.rst'
master_doc = 'index'

# -- Project information --------------------------------------------------

project = 'Sphinx Fortran'
author = 'Feargus Schofield'

# -- Options for HTML output ------------------------------------------------

html_theme = 'alabaster'
html_static_path = ['_static']

# -- Options for Fortran extension -----------------------------------------

#fortran_src = '/home/feargus/Documents/Fortran-Sphinx/Fortran-Sphinx/source/mainprogram/source'
#fortran_extra_ext = ['.f90']
#fortran_ext = ['.f90']
#fortran_encoding = "utf8"
#fortran_mod = '_fortran_modules'
#fortran_doc_module = True
#fortran_indent = 0

# -- Extension configuration ------------------------------------------------

autodoc_member_order = 'bysource'

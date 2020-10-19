## Import required Python modules
#%matplotlib inline
import matplotlib.pyplot as plt
import numpy as np
import scipy
import io
import base64
from IPython.display import HTML, Image
from urllib.request import urlopen

try:
    import astropy as apy
    import astropy.table
    _apy = True
    #print('Loaded astropy')
except:
    _apy = False
    #print('Could not load astropy')

## Customising the font size of figures
plt.rcParams.update({'font.size': 14})

## Customising the look of the notebook
## This custom file is adapted from https://github.com/lmarti/jupyter_custom/blob/master/custom.include
#HTML('files/custom.include')
HTML(urlopen('https://raw.githubusercontent.com/bretonr/intro_data_science/master/custom.include').read().decode('utf-8'))



from IPython.display import display, HTML
import requests

def load_style(s):
    """Load a CSS stylesheet in the notebook by URL or filename.
    Examples::
    
        %load_style mystyle.css
        %load_style http://ipynbstyles.com/otherstyle.css
    """
    if s.startswith('http'):
        r =requests.get(s)
        style = r.text
    else:
        with open(s, 'r') as f:
            style = f.read()
    s = '<style>\n{style}\n</style>'.format(style=style)
    display(HTML(s))
    import numpy as np

def load_ipython_extension(ip):
    """Load the extension in IPython."""
    ip.register_magic_function(load_style)

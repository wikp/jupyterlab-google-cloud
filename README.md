# DataScience environment on Jupyter Lab with Google Cloud SDK

For people who think that Google Datalab is too simple to be powerful 
and for those who prefer Jupyter Lab over plain old Jupyter Notebook.

## Contents

- MiniConda 4.3.27 with Python 3.6.2
- Google Cloud SDK and google-cloud python package
- Jupyter Lab
- Tensorflow, Pandas, seaborn, Bokeh, numpy, scipy and other libs used in Data Science.

# How to run?

Run these commands in the notebook directory.

If you are using `bash` or `zsh`:

    docker pull jaszczur/jupyterlab-google-cloud:latest
    docker run -it -p 8888:8888 -v $(pwd):/root/notebooks jaszczur/jupyterlab-google-cloud:latest

if `fish`:

    docker pull jaszczur/jupyterlab-google-cloud:latest
    docker run -it -p 8888:8888 -v (pwd):/root/notebooks jaszczur/jupyterlab-google-cloud:latest

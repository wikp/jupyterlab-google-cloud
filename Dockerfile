FROM continuumio/miniconda3:latest

RUN /opt/conda/bin/pip --no-cache-dir install jupyterlab tensorflow bokeh seaborn pandas numpy keras scikit-learn \
    && conda install gcc_linux-64 \
    && pip --no-cache-dir install google-cloud \
    && jupyter lab --generate-config

RUN curl https://sdk.cloud.google.com | bash

RUN /root/google-cloud-sdk/bin/gcloud config set --installation component_manager/disable_update_check true

RUN sed -i -- 's/\"disable_updater\": false/\"disable_updater\": true/g' /root/google-cloud-sdk/lib/googlecloudsdk/core/config.json

VOLUME ["/.config"]
ENV PATH $PATH:/root/google-cloud-sdk/bin

WORKDIR /root/notebooks
EXPOSE 8888

ENTRYPOINT jupyter lab --notebook-dir=/root/notebooks --no-browser --allow-root --ip='*' --port=8888

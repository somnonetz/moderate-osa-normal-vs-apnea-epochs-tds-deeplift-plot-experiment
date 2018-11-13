FROM docker.io/debian:9.5-slim

RUN apt-get update \
&& apt-get install -y python3-pip \
&& useradd -ms /bin/bash cc

# install cc-core
USER cc

RUN pip3 install --no-input --user cc-core==5.4.0

ENV PATH="/home/cc/.local/bin:${PATH}"
ENV PYTHONPATH="/home/cc/.local/lib/python3.5/site-packages/"

# install app
RUN pip3 install --no-input --user https://github.com/somnonetz/combination-triangles-plot/releases/download/0.2/combination_triangles_plot-0.2-py3-none-any.whl
RUN mkdir -p ~/.config/matplotlib && echo "backend: agg" > ~/.config/matplotlib/matplotlibrc

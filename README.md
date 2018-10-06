# Moderate OSA Normal vs. Apnea Epochs TDS DeepLift Plot Experiment

This is a reproducible experiment in RED format. Use the `faice` CLI tool from the [Curious Containers](https://www.curious-containers.cc) project to execute the experiment in a Docker container on Linux.

The experiment is based on the [Combination Trianlges Plot](https://github.com/somnonetz/combination-triangles-plot) CLI tool.

```bash
pip3 install --user --upgrade "cc-faice>=5.3.1,<5.4"

git clone git@github.com:somnonetz/moderate-osa-normal-vs-apnea-epochs-tds-deeplift-plot-experiment.git
cd moderate-osa-normal-vs-apnea-epochs-tds-deeplift-plot-experiment

# local execution via faice agent
faice agent red red.yml

# remote execution via faice exec
faice exec red.yml
```

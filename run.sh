#!/bin/bash
docker run -v $(pwd):/home/jovyan/work -p 8888:8888 jupyter/datascience-notebook
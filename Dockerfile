# Environment for Pastoll 2013 spiking continuous attractor network
# ModelDB accession 150031
# 
# Example usage:
# docker build . -t pastoll2013
# docker run -it -v ${PWD}:/code -w /code/grid_cell_model pastoll2013 ./submit_basic_grids.py
#
FROM ubuntu:14.04

# Install python and system dependencies for numpy, scipy, and matplotlib
RUN apt-get update -y && \
    apt-get install -y python2.7 python-pip python-dev libblas3 libgfortran3 liblapack3 liblapack-dev libblas-dev gfortran libfreetype6-dev

# Finally install the python packages we need 
RUN pip install brian==1.4.0
RUN pip install numpy==1.6.2
RUN pip install scipy==0.11.0
RUN pip install matplotlib==1.1.1

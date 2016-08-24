#!/usr/bin/env bash

# Install miniconda
brew cask install miniconda

# Create a ds environment with jupyter
conda create -n ds jupyter


# Install some packages in the root environment
pip install pep8 autopep8 flake8
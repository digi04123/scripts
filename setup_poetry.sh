#!/bin/bash

curl -sSL https://install.python-poetry.org | python3 -
export PATH=$PATH:$HOME/.local/bin
alias p='poetry'
poetry config virtualenvs.in-project true
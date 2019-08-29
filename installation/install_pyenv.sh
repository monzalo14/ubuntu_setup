#!/usr/bin/env bash

# Install pyenv from source repo
git clone https://github.com/pyenv/pyenv.git ~/.pyenv

# Add PYENV_ROOT to path variables in order to access the pyenv cli
echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshenv
echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshenv

# Add pyenv init to shell to enable shims and autocompletion
echo -e 'if command -v pyenv 1>/dev/null 2>&1; then\n  eval "$(pyenv init -)"\nfi' >> ~/.zshenv

# Install python versions
pyenv install 2.7.17 3.7.3
pyenv global 3.7.3

# Install ipython
pip install ipython


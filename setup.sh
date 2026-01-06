#!/bin/bash
set -e

# Installer pyenv si absent
if ! command -v pyenv >/dev/null 2>&1; then
    brew install pyenv
fi

# Initialiser pyenv
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Version Python stable pour ML
PYTHON_VERSION=3.13.5

# Installer et activer Python
pyenv install -s $PYTHON_VERSION
pyenv local $PYTHON_VERSION

# Créer l'environnement virtuel
python -m venv venv

# Activer l'environnement
source venv/bin/activate

# Mettre pip à jour
pip install --upgrade pip

# Installer les dépendances
pip install -r requirements.txt

echo "Installation terminée."
echo "Activer l'environnement avec : source venv/bin/activate"

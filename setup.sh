#!/bin/bash

# Script d'installation de l'environnement Python pour Statistical-Learning

echo "🔧 Configuration de l'environnement Python..."

# Initialiser pyenv dans cette session
export PYENV_ROOT="$HOME/.pyenv"
export PATH="$PYENV_ROOT/bin:$PATH"
eval "$(pyenv init -)"

# Vérifier si pyenv est installé
if ! command -v pyenv &> /dev/null; then
    echo "⚠️  pyenv n'est pas installé. Installation..."
    brew install pyenv
    
    # Ajouter pyenv au shell
    echo 'export PYENV_ROOT="$HOME/.pyenv"' >> ~/.zshrc
    echo 'export PATH="$PYENV_ROOT/bin:$PATH"' >> ~/.zshrc
    echo 'eval "$(pyenv init -)"' >> ~/.zshrc
fi

# Installer Python 3.13.5
echo "📦 Installation de Python 3.13.5..."
pyenv install -s 3.13.5

# Activer la version pour ce projet
pyenv local 3.13.5

# Recharger pyenv pour utiliser la bonne version
eval "$(pyenv init -)"

# Créer un environnement virtuel
echo "🌐 Création de l'environnement virtuel..."
python -m venv venv

# Activer l'environnement virtuel
source venv/bin/activate

# Mettre à jour pip
echo "⬆️  Mise à jour de pip..."
pip install --upgrade pip

# Installer les dépendances
echo "📚 Installation des packages..."
pip install -r requirements.txt

echo "✅ Installation terminée!"
echo ""
echo "Pour activer l'environnement:"
echo "  source venv/bin/activate"

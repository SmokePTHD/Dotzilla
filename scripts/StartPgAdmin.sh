#!/bin/bash
# Caminhos corretos
PGADMIN4_SRC=~/Downloads/pgadmin4-9.6/web

# Verifica a versão do Python (opcionalmente)
python3 --version

# Virtualenv
python3 -m venv venv
source venv/bin/activate

# Instalação das dependências corretas
cd ~/Downloads/pgadmin4-9.6
pip install -r requirements.txt

# Inicia o pgAdmin
python3 web/pgAdmin4.py


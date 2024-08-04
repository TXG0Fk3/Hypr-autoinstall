#!/usr/bin/env bash

## Instalar o Aur Helper

# Instala as dependências necessárias
sudo pacman -S --needed base-devel git || {
    echo "Erro ao instalar as dependências."
    exit 1
}

# Clona o repositório do Yay
git clone https://aur.archlinux.org/yay.git || {
    echo "Erro ao clonar o repositório do Yay."
    exit 1
}
cd yay

# Compila e instala o Yay
makepkg -si || {
    echo "Erro ao compilar e instalar o Yay."
    exit 1
}

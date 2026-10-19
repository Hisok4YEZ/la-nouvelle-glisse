#!/bin/bash
# Télécharge les photos du site dans le dossier images/ (à lancer une fois, double-clic).
# Important avant de mettre le site en ligne : les photos d'origine sont en http,
# un site en https (GitHub Pages par exemple) ne pourra pas les afficher sans ce dossier.
cd "$(dirname "$0")" || exit 1
mkdir -p images

telecharge() {
  echo "→ $1"
  curl -sSL --fail -o "images/$1" "$2" || echo "   échec pour $1"
}

S="http://www.lanouvelleglisse.com/img"
telecharge vercors.jpg    "$S/squelette/bgHeader.jpg"
telecharge plateau.jpg    "$S/accueil/bgLienLocation.jpg"
telecharge magasin-1.jpg  "$S/squelette/imgDecoFooter-1.jpg"
telecharge magasin-3.jpg  "$S/squelette/imgDecoFooter-3.jpg"
telecharge magasin-4.jpg  "$S/squelette/imgDecoFooter-4.jpg"

echo ""
echo "Terminé. Les photos sont dans le dossier images/."

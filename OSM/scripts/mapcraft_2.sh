#!/bin/bash
for a in Bresson Brié-et-Angonnes Champ-sur-Drac Champagnier Claix Corenc Domène Échirolles Eybens Fontaine Fontanil-Cornillon Gières Grenoble Herbeys Jarrie Meylan Miribel-Lanchâtre Mont-Saint-Martin Montchaboud Murianette Notre-Dame-de-Commiers Notre-Dame-de-Mésage Noyarey Poisat Proveysieux Quaix- en-Chartreuse Saint-Barthélémy-de-Séchilienne Saint-Égrève Saint-Georges-de-Commiers Saint-Martin-d'Hères Saint-Martin-le-Vinoux Saint-Paul-de-Varces Saint-Pierre-de-Mésage Sappey-en-Chartreuse Sarcenas Sassenage Séchilienne Seyssinet-Pariset Seyssins Varces-Allières-et-Risset Vaulnaveys-le-Bas Vaulnaveys-le-Haut Venon Veurey-Voroize Vif Vizille
do 
 wget -O $a.osm "http://overpass-api.de/api/interpreter?data=[out:xml][timeout:25];(relation[admin_level=8][name=$a];);out meta;>;out meta qt;"
done
for a in "Le Gua" "La Tronche" "Le Pont-de-Claix" 
do 
 wget -O $a.osm "http://overpass-api.de/api/interpreter?data=[out:xml][timeout:25];(relation[admin_level=8][name=$a];);out meta;>;out meta qt;"
done

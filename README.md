# Explication des variations du prix de l'électricité en France et en Allemagne

## Contexte

Ce projet s'inscrit dans le cadre du **QRT Data Challenge 2023**. L'objectif est de développer un modèle prédictif pour expliquer les mouvements de variations des prix de l'électricité en Allemagne et en France.

## Auteurs

- **Tania Admane**
- **Lola Chardigny**

## Méthodologie

### 1. Prétraitement des données
- Nettoyage et exploration des données
- Feature engineering
- Gestion des valeurs manquantes
- Normalisation des variables

### 2. Modélisation
Nous avons testé et comparé **5 approches différentes** :

- **Régression linéaire** : Modèle de référence
- **Régression avec régularisation (Lasso/Ridge)** : Sélection de features et prévention du surapprentissage
- **Random Forest** : Modèle ensembliste basé sur les arbres de décision
- **LightGBM** : Gradient boosting optimisé pour la rapidité et la performance
- **Réseau de neurones** : Architecture minimaliste 


## Résultats

Les performances des modèles sont évaluées avec la corrélation de Spearman et la MAE (Mean Absolute Error) sur les ensembles de validation.


# Flutter Test Formation

Un projet Flutter minimaliste pour **apprendre et démystifier les tests** unitaires et de widgets dans Flutter.  
Cette application met en œuvre un simple compteur avec incrémentation/décrémentation, et fournit des tests complets pour la logique métier ainsi que l’interface utilisateur.

---

## Objectifs pédagogiques

- Comprendre la **séparation entre logique et interface**.
- Découvrir comment écrire :
  - des **tests unitaires** en Dart
  - des **tests de widgets** avec `flutter_test`
- Offrir une base simple et compréhensible aux développeurs débutants.

---

## Structure du projet

```bash
flutter_test_demo/
├── lib/
│   ├── main.dart             # Point d'entrée
│   ├── counter.dart          # Logique métier du compteur
│   └── counter_view.dart     # Interface utilisateur avec état
├── test/
│   ├── counter_test.dart     # Tests unitaires de la logique
│   └── counter_view_test.dart # Tests de widget
├── pubspec.yaml              # Dépendances
```

---

## Démarrage rapide

### Prérequis

- [Flutter SDK](https://docs.flutter.dev/get-started/install)
- Un éditeur (recommandé : VS Code ou Android Studio)

---

### Installation

```bash
git clone https://github.com/kepya/flutter_test_formation.git
cd flutter_test_formation
flutter pub get
```

---

## Exécution des tests

Tu peux lancer tous les tests avec la commande suivante :

```bash
flutter test
```

### Tests inclus :

| Fichier                   | Type            | Description                                   |
|--------------------------|-----------------|-----------------------------------------------|
| `counter_test.dart`      | Test unitaire   | Teste la logique métier (Counter class)       |
| `counter_view_test.dart` | Test de widget  | Vérifie l’affichage, les clics et les mises à jour |

---

## Fonctionnement

### `Counter` – Logique métier

```dart
class Counter {
  int _count = 0;

  int get count => _count;

  void increment() => _count++;
  void decrement() => _count--;
}
```

Gère un entier simple avec des méthodes pour l’incrémenter/décrémenter.

---

### `CounterView` – Interface utilisateur

```dart
class CounterView extends StatefulWidget { ... }
```

- Affiche la valeur actuelle
- Boutons d’ajout / suppression
- Gère l’état localement via `setState`

---

## Outils utilisés

- **Flutter SDK**
- **flutter_test** pour les tests unitaires & widgets
- **Key** pour accéder aux éléments dans les tests

---

## Auteur

**Nom** – [kepya](https://github.com/kepya)  
Fait dans le cadre de la vulgarisation des concepts de test en Flutter.

---

## Licence

Ce projet est sous licence MIT – libre d’usage, partage et modification.

# Quickstart Guide
New to the Phonewords library? THis guide will help you!

## Understanding phonewords
Phonewords is a Dart library. It aims to try to convert between vanity numbers (phone numbers with letters in them) and normal, numeric phone numbers.
However, phonewords is still an **extremely young library and is currently quite limited.**
As of April 2025, it can merely convert between numbers in the form of 1-800-GOOD to being in the form of 1-800-4663.

## Start using phonewords
1. Create a Dart or Flutter project. 
You can create a Dart project by running ```dart create project_name``` (where project_name is the name of the project) or a flutter project by running ```flutter create project_name```
We recommend using Git Bash to run these commands. *Note that you must have dart or flutter installed to do so.*

2. Go to "pubspec.yaml" and then go to ```dependencies:``` Underneath it, type, ```phonewords: ^1.0.0```
It should look like
``` 
dependencies:
    phonewords: ^1.0.0

```

3. In your terminal (we recommend Git Bash), run ```dart pub get``` to get all needed dependencies.
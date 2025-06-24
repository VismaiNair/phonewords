# phonewords
Find numeric phone numbers from words and find vanity numbers from numeric phone numbers! This is a pub library.

## Quickstart Guide
New to the Phonewords library? This guide will help you!

### Understanding phonewords
Phonewords is a Dart library. It aims to try to convert between vanity numbers (phone numbers with letters in them) and normal, numeric phone numbers.
However, phonewords is still an **extremely young library and is currently quite limited.**
The limitations are that it cannot break phone numbers into chunks (as of version 1.1.0) and cannot convert numeric phone numbers into string-formatted phone numbers.

Now, we will describe two methods to obtain phonewords and walk you through the function.

### Start using phonewords: Method 1
1. Create a Dart or Flutter project. 
You can create a Dart project by running ```dart create project_name``` (where project_name is the name of the project) or a flutter project by running ```flutter create project_name```
We recommend using Git Bash to run these commands. *Note that you must have dart or flutter installed to do so.*

2. Go to "pubspec.yaml" in your project root and then go to ```dependencies:``` Underneath it, type, ```phonewords: ^1.0.0```
It should look like
``` 
dependencies:
    phonewords: ^1.0.0

```

3. In your terminal (we recommend Git Bash or Bash), run ```dart pub get``` to get all needed dependencies.

4. Use the `numberFromString()` function and pass the string (vanity) phone number you want to use into the function as the argument.

### Start Using phonewords: Method 2
1. Create a Dart or Flutter project. 
You can create a Dart project by running ```dart create project_name``` (where project_name is the name of the project) or a flutter project by running ```flutter create project_name```
We recommend using Git Bash or Bash to run these commands. *Note that you must have dart or flutter installed to do so.*

2. In your terminal, type `dart pub add phonewords`

3. Use `import 'package:phonewords/phonewords.dart'` at the top of the dart file where you want to use it

4. Use the `numberFromString()` function and pass the string (vanity) phone number you want to use into the function as the argument.
Ruby
======================

Ce repository contient les specs des exercices sur la journée de cours sur Ruby

Programme de la journee
-----------------------

Les exercices/specs d'ajourd'hui vous feront travailler sur le langage
Ruby lui-meme, des bases a quelques elements de meta-programmation.

Extentions VScode conseillées pour Ruby
------------------

* [Ruby](https://marketplace.visualstudio.com/items?itemName=rebornix.Ruby)
* [Endwise](https://marketplace.visualstudio.com/items?itemName=kaiwood.endwise)
* [VSCode Ruby](https://github.com/rubyide/vscode-ruby)


Ordre des exercices
-------------------

* basic_spec.rb
* so_class_spec.rb
* modules_spec.rb
* advanced_spec.rb


Resources
-------------------

- [Ruby](https://ruby-doc.org/core-3.0.0/)
- [Rspec](https://relishapp.com/rspec)
- [Rspec matcher](https://relishapp.com/rspec/rspec-expectations/v/3-10/docs/built-in-matchers)

Comment executer les specs ?
----------------------------

Prérequis : Avoir installé docker sur sa bécane.

    docker-compose build
    docker-compose run ruby /bin/ash

Vous pouvez executer seulement un seul fichier de spec

    host $ rspec spec/basic_spec.rb

Ou encore seulement un seul example, en specifiant le fichier puis la
ligne de l'exemple

    host $ rspec spec/basic_spec.rb:77


require_relative "tools.rb"             # подключаем файл, в котором находится модуль tools.rb
include Tools                           # подключаем модуль, по названию Tools

Tools.sayHello("George")
Tools.sayBye("George")
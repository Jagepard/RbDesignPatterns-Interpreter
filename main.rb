=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

require './Album'
require './Interpreter'

interpreter = Interpreter.new();

interpreter.addAlbumToRegistry(Album.new("Untouchables", "Korn"));
interpreter.addAlbumToRegistry(Album.new("Adrenaline", "Deftones"));
interpreter.interpret("album 2");
interpreter.interpret("album author 2");
interpreter.interpret("album author 1");
interpreter.interpret("author 1");

=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

class Interpreter
  def initialize
    @registry = []
  end

  def add_album_to_registry(album)
    @registry << album
  end

  def interpret(input)
    exploded = input.split(' ')
    exploded.each { |item|
      if /\A\d+\z/.match(item)
        self.get_data_from_registry(exploded, @registry[item.to_i - 1])
      end
    }
  end

  def get_data_from_registry(exploded, album)
    output = ""

    exploded.each { |element|
      if element === "album"
        output << "#{album.name} "
      end

      if element === "author"
        output << "#{album.author}"
      end
    }

    puts output
  end
end

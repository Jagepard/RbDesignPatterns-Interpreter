=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

class Interpreter
    @@registry = []

    def addAlbumToRegistry(album)
        @@registry << album
    end

    def interpret(input)
        exploded = input.split(' ')
        exploded.each { |item|
            if /\A\d+\z/.match(item)
                self.getDataFromRegistry(exploded, @@registry[item.to_i - 1])
            end
        }
    end

    def getDataFromRegistry(exploded, album)
        output = ''

        exploded.each { |element|
            if element === "album"
                output << "#{album.getName()} "
            end

            if element === "author"
                output << "#{album.getAuthor()}"
            end
        }

        puts output
    end
end

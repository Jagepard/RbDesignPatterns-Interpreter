=begin
author  : Jagepard <jagepard@yandex.ru>
license https://mit-license.org/ MIT
=end

class Album
    def initialize(name, author)
        @name, @author = name, author
    end

    def name
        @name
    end

    def author
        @author
    end
end

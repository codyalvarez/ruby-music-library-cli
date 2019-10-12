require"pry"
class Song
    attr_accessor :name
    attr_reader :artist

    @@all = []
    
    def initialize(name, artist = nil, genre = nil)
        @name = name
        self.artist = artist
        self.genre = genre
    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(name)
       @song = Song.new(name)
       @song.save
       @song
    end

    def artist=(artist)
        if @artist == nil
            @artist = artist
        else
            @artist = @artist
        end
        if self.artist != nil
            @artist.add_song(self)
        end
        @artist
    end

    def artist
        @artist
    end

    def genre=(genre)
        if @genre == nil
         @genre = genre
        else
        @genre = @genre
        end
        if self.genre != nil
            @genre.add_song(self)
        end
        @genre
        
    end

    def genre
        @genre
    end

     

end
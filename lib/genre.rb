class Genre 
    attr_accessor :name
    @@all = []

    def initialize(name)
        @name = name
        @@all << self
    end

    def self.all
        @@all
    end 

    def songs
        Song.all.select {|song| song.genre == self}
    end

    def artists
        self.songs.map(&:artist)

        # self.songs.map { |song| song.artist == self}
        # go through all the artists and map through all of he artists that are the same as the genre 
            
    
    end 
end

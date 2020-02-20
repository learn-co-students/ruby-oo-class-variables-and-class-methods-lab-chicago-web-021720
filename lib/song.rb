class Song
    attr_accessor :name, :artist, :genre
    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}
    @@artist_count = {}


    def initialize(name, artist, genre)
        @name = name 
        @artist = artist 
        @genre = genre
        @@genres << genre
        @@artists << artist
        @@count += 1
        if @@genre_count[self.genre]
            @@genre_count[self.genre] += 1
        else
            @@genre_count[self.genre] = 1
        end
        if @@artist_count[self.artist]
            @@artist_count[self.artist] += 1
        else
            @@artist_count[self.artist] = 1
        end
    end

    def self.count
        @@count 
    end

    def self.artists 
        @@artists.uniq
    end

    def self.genres 
        @@genres.uniq
    end

    def self.genre_count
        @@genre_count
    end

    def self.artist_count
        @@artist_count 
    end

end

old_town_road = Song.new("old town road", "lil nas x", "country")
panini = Song.new("panini", "lil nas x", "pop")
ring_of_fire = Song.new("ring of fire", "johnny cash", "country")
hey_jude = Song.new("hey jude", "the beatles", "rock")

p Song.genres
p Song.genre_count
p Song.artists
p Song.artist_count
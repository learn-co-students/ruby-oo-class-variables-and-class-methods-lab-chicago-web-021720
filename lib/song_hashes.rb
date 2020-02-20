class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = Hash.new
    @@genres = Hash.new

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@artists[artist] ||= 0
        @@artists[artist] += 1
        @@genres[genre] ||= 0
        @@genres[genre] += 1
        @@count += 1
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.keys
    end

    def self.genre_count
        @@genres
    end

    def self.artist_count
        @@artists
    end

end

# ninety_nine_problems = Song.new("99 Problems", "Jay-Z", "Rap")
# Song.new("Lucifer", "Jay-Z", "Rap" )
# crazy_in_love = Song.new("Crazy in Love", "Beyonce", "R&B")
# sweet_virginia = Song.new("Sweet Virginia", "Rolling Stones", "Rock")
# bring_da_ruckus = Song.new("Bring Da Ruckus", "Wu Tang", "Rap")
# aint_no = Song.new("Ain't No", "Jay-Z", "Rap")
# norwegian_wood = Song.new("Norwegian Wood", "Beatles", "Rock")

puts Song.count
puts Song.genres.class
puts Song.genre_count
puts Song.artist_count
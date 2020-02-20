class Song
    attr_accessor :name, :artist, :genre

    @@count = 0
    @@artists = []
    @@artist_counts = []
    @@genres = []
    @@genre_counts = []

    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre

        @@count += 1

        # if !@@genres.include?(genre)
        #     @@genres << genre
        #     @@genre_counts << 1
        # else
        #     @@genre_counts[@@genres.index(genre)] += 1
        # end

        # if !@@artists.include?(artist)
        #     @@artists << artist
        #     @@artist_counts << 1
        # else
        #     @@artist_counts[@@artists.index(artist)] += 1
        # end

        @@genres << genre
        @@artists << artist
    end

    def self.count
        @@count
    end

    def self.genres
        @@genres.uniq
    end

    def self.artists
        @@artists.uniq
    end

    def self.genre_count
        # Hash[@@genres.zip @@genre_counts]
        hash = Hash.new(0)
        @@genres.each { |h| hash[h] += 1 }
        hash
    end

    def self.artist_count
        # Hash[@@artists.zip @@artist_counts]
        hash = Hash.new(0)
        @@artists.each { |h| hash[h] += 1 }
        hash
    end

end

# Song.new("99 Problems", "Jay-Z", "Rap")
# Song.new("Lucifer", "Jay-Z", "Rap" )
# Song.new("Crazy in Love", "Beyonce", "R&B")
# Song.new("Sweet Virginia", "Rolling Stones", "Rock")
# Song.new("Bring Da Ruckus", "Wu Tang", "Rap")
# Song.new("Ain't No", "Jay-Z", "Rap")
# Song.new("Norwegian Wood", "Beatles", "Rock")

Song.new("Lucifer", "Jay-Z", "rap" )
Song.new("99 Problems", "Jay-Z", "rap")
Song.new("hit me baby one more time", "Brittany Spears", "pop")

puts Song.count
p Song.genres
p Song.artists
puts Song.genre_count
puts Song.artist_count
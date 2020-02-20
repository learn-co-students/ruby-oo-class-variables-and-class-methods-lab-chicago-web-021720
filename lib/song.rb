class Song

    @@count = 0
    @@artists = []
    @@genres = []
    @@genre_count = {}

    attr_accessor :name, :artist, :genre

    def initialize(name, artist, genre)
        # Instance variables
        @name = name
        @artist = artist
        @genre = genre

        # Class variables
        @@count += 1
        @@artists << artist
        @@genres << genre
        if @@genre_count[genre]
            @@genre_count[genre] += 1
        else
            @@genre_count[genre] = 1
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
        artist_counts = {}
        @@artists.each do |song_artist|
            if artist_counts[song_artist]
                artist_counts[song_artist] += 1
            else
                artist_counts[song_artist] = 1
            end
        end
        artist_counts
    end

end

puts Song.new("my_song", "my_artist", "my_genre")

class Song
    @@count=0
    @@artists=[]
    @@genres=[]
    attr_accessor :name, :artist, :genre
    def initialize(name, artist, genre)
        @name = name
        @artist = artist
        @genre = genre
        @@count+=1
        @@artists.push (artist)
        @@genres.push (genre)
    end

    def self.count
        return @@count
    end

    def self.artists
        return @@artists.uniq
    end

    def self.genres
        return @@genres.uniq
    end

    def self.genre_count
        genres=Hash.new
        for i in self.genres
            genres[i]=@@genres.count(i)
        end
        return genres
    end

    def self.artist_count
        artists=Hash.new
        for i in self.artists
            artists[i]=@@artists.count(i)
        end
        return artists
    end

            
end
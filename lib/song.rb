require 'pry'
class Song
  @@count = 0
  @@genres = []
  @@artists = []
  attr_accessor :name, :genre, :artist
  def initialize(name,artist,genre)
    @name = name
    @genre = genre
    @artist = artist
    @@count += 1
    @@genres << genre
    @@artists.push(artist)
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
    genres_count = {}
    @@genres.each do |genre|
      genres_count[genre] ? genres_count[genre] += 1
      : genres_count[genre] = 1
    end
    genres_count
  end
  def self.artist_count
    artists_count = {}
    @@artists.each do |genre|
      artists_count[genre] ? artists_count[genre] += 1
      : artists_count[genre] = 1
    end
    artists_count
  end
end

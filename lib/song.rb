# create the Song class 
class Song 
  @@count = 0
  @@artists = []
  @@genres = []
  
  attr_accessor :name, :artist, :genre 
  
  def initialize(name, artist, genre)
    @name = name
    @artist = artist
    @genre = genre 
    @@count += 1 
    @@genres << genres
    @@artists << artist 
  end
  
  def self.count 
    @@count
  end
  
  def self.genres 
    genres.uniq
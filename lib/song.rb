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
    {}.tap {|h| @@genres.each { |genre| h[genre] += 1} 
  end 
  
  def self.artist_count
    {}.tap {|h| @@artists.each{ |artist| count[artist] += 1} 
  end
end      
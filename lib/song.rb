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
    g_count = {}
    @@genres.each { |genre| g_count[genre] += 1}
    g_count 
  end 
  
  def self.artist_count
    @@artists.each_with_object { |artist, count| count[artist] += 1} 
  end
end      
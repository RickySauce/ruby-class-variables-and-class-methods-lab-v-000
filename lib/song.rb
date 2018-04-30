class Song
  attr_accessor :name, :artist, :genre

  @@count = 0
  @@artists = Array.new
  @@genres = Array.new

  def initialize(name,artist,genre)
    @name = name
    @artist = artist
    @genre = genre
    @@count += 1
    @@artists << @artist
    @@genres << @genre unless @@genres.any? {|existing_genres| existing_genres == @genre}
  end

  def self.count
    @@count
  end


end

class Song

  attr_accessor :name, :artist, :song
  @@count = 0  # keep track of the number of new songs that are created from the Song class.
  @@artists = []
  @@genres = []

  def initialize(song_name,artist,genre)
   @name = song_name
   @artist = artist
   @genre = genre
   @@count += 1 ##initialize method should use the @@count variable and increment the value of that variable by 1
   @@artists << artist
   @@genres << genre
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
    genre_count = Hash.new(0)
    @@genres.each {|genre| genre_count[genre] += 1}
    genre_count
  end

  def self.artist_count
    artist_count = Hash.new(0)
    @@artists.each {|artist| artist_count[artist] += 1}
    artist_count
  end

end

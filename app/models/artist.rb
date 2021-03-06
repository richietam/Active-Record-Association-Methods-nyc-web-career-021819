class Artist < ActiveRecord::Base
  has_many :songs
  has_many :genres, through: :songs

  def get_genre_of_first_song
    #return the genre of the artist's first saved song
    self.songs.first.genre

  end

  def song_count
    self.songs.length
  end

  def genre_count
    self.songs.map do |song|
      song.genre_id
    #return the number of genres associated with the artist
  end.uniq.count
  end
end

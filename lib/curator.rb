class Curator
  attr_reader :photographs,
              :artists

  def initialize
    @photographs = []
    @artists = []
  end

  def add_photograph(photograph)
    @photographs << photograph
  end

  def add_artist(artist)
    @artists << artist
  end

  def find_artist_by_id(artist_id)
    @artists.find do |artist|
      artist.id == artist_id
    end
  end

  def photographs_by_artist
    @artists.reduce(Hash.new) do |completed_search_table, artist|
      completed_search_table[artist] ||= []

      @photographs.each do |photo|
        if photo.artist_id == artist.id
          completed_search_table[artist] << photo
        end
      end
      completed_search_table
    end
  end

  def artists_with_multiple_photographs
    photos_by_artist = photographs_by_artist
    @artists.reduce([]) do |found_artists, artist|
      if photos_by_artist[artist].length > 1
        found_artists << artist.name
      end
      found_artists
    end
  end
end

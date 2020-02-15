module ArtistsHelper
  def display_artist(song)
    # display link to artist page if artist not empty
    if song.artist
      link_to song.artist_name, artist_path(song.artist)
    else # display link to edit the song if artist empty 
      link_to "Add Artist", edit_song_path(song)
    end
  end
end

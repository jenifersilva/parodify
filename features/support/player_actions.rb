# frozen_string_literal: true

# Player actions
module PlayerActions
  def go_to_category(category)
    find('a[href="/search/new"]').click
    find("img[src$='#{category.downcase}.png']").click
  end

  def go_to_band(band)
    find('a', text: band).click
  end

  def play_song(song)
    song = find('.song-item', text: song)
    song.find('.fa-play-circle').click
  end

  def song_playing
    find('.playing')
  end
end

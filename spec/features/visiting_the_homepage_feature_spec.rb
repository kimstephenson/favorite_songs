require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user can see a list of songs" do
    visit "/"

    song = Song.create(title: "Song", artist: "someone")

    expect(page).to have_content(song.title, song.artist)
  end
end

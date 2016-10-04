require 'rails_helper'

feature "visiting the homepage" do
  scenario "the user can see a list of songs" do
    song = Song.create(title: "Song", artist: "someone")

    visit "/"

    expect(page).to have_content(song.title)
    expect(page).to have_content(song.artist)
  end
end

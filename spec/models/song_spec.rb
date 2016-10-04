require 'rails_helper'

RSpec.describe Song, type: :model do
  let(:song) { Song.create(title: "Hey Jude", artist: "Beatles") }

  it "has a title" do
    expect(song.title).to eq "Hey Jude"
  end

  it "has an artist" do
    expect(song.artist).to eq "Beatles"
  end
end

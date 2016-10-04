require 'rails_helper'

describe SongsController do
  let(:song) { Song.create!(title: "Song", artist:"person") }

  describe "GET #index" do
    it "responds with status code 200" do
      get :index
      expect(response).to have_http_status 200
    end

    it "assigns the collection of songs as @songs" do
      get :index, { songs: Song.all }
      expect(assigns(:songs)).to eq(Song.all)
    end

    it "renders the :index template" do
      get :index, { songs: Song.all }
      expect(response).to render_template(:index)
    end
  end
end

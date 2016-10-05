require 'rails_helper'

describe UsersController do
  # let(:user) { User.new(username: "username", password: "password")}


  describe "GET #new" do
    it "responds with status code 200" do
      get :new
      expect(response).to have_http_status 200
    end

    it "renders the :new template" do
      get :new
      expect(response).to render_template(:new)
    end
  end

  describe "POST #create" do
    let(:user) {{username: "username", password: "password"}}

    it "responds with status code 302" do
      post :create, { user: user}
      expect(response).to have_http_status 302
    end

    it "creates a new user in the database" do
      expect{ post :create, {user: user}}.to change(User, :count).by(1)
    end

    it "redirects back to the homepage" do
      post :create, { user: user }
      expect(response).to redirect_to "/"
    end
  end

end

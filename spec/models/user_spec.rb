require 'rails_helper'

describe User do
 let(:user) { User.create!(username: "username", password: "password")}

 it "has a username" do
   expect(user.username).to eq "username"
 end

 it "has a password" do
   expect(user.password).to eq "password"
 end
end

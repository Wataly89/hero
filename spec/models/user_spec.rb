require 'rails_helper'

RSpec.describe User, type: :model do
	before :example do
		@user = User.create(email: "test@test.com", password: "password", password_confirmation: "password")
		@character = Character.create(name: "Tony", chr_class: "Technology")
	end
  describe "when user create a character" do
  	it "should assign users to a character" do
  		@user.characters << @character
  		expect(@user.characters.length).to eq 1
  	end
  end
end

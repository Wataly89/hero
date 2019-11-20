require 'rails_helper'

RSpec.describe Character, type: :model do
  describe "when character helper methods are called" do
  	it "should show available classes" do
  		 CharacterHelper.available_classes
  		expect(CharacterHelper.available_classes).to eq ["Technology", "Projector", "Martial Arts", "Mentalist", "Brick", "Mystic"]
  	end
	end
	describe "when character is initialized" do
		it "should assign correct powers" do
			character = Character.new(chr_class: "Brick")
			character.assign_powers
			expect(character.powers).to eq "Might, Heavy Weapons, Earth"
		end
	end

end

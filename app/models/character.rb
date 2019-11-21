class Character < ApplicationRecord
	belongs_to :user

	def assign_powers
		self.powers = power_lookup.join(", ")

	end

	def power_lookup
		{ "Projector" => ["Electricity", "Fire", "Force", "Wind", "Ice"], 
			"Technology" => ["Themed Weaponry(Hand to Hand)", "Base & Vehicles", "Themed Weaponry(Ranged)", "Eye Beams", "Scientist", "Utility Belt"],
			"Martial Arts" => ["Dual Blades", "Fighting Claws", "Single Blade", "Unarmed"],
			"Mentalist" => ["Telepathy", "Telekinesis"],
			"Brick" => ["Might", "Heavy Weapons", "Earth"],
			"Mystic" => ["Celestial", "Darkness", "Arcane Sorcery", "Bestial Supernatural", "Infernal Supernatural"]
		}[chr_class]
	end

	def assign_skills
		self.skills = skill_lookup.join(", ")
	end

	def skill_lookup	
		{ "Projector" => ["Electricity", "Fire", "Force", "Wind", "Ice"], 
			"Technology" => ["Well Connected & Persuasive", "Detective", "Knowledgeable"],
			"Martial Arts" => ["Dual Blades", "Fighting Claws", "Single Blade", "Unarmed"],
			"Mentalist" => ["Telepathy", "Telekinesis"],
			"Brick" => ["Might", "Heavy Weapons", "Earth"],
			"Mystic" => ["Celestial", "Darkness", "Arcane Sorcery", "Bestial Supernatural", "Infernal Supernatural"]
		}[chr_class]
		
	end


end
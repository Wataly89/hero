class Character < ApplicationRecord
	#def initialize
		#assign_powers
	#end

	def assign_powers
		self.powers = power_lookup.join(", ")

	end

	def power_lookup
		{ "Projector" => ["Electricity", "Fire", "Force", "Wind", "Ice"], 
			"Technology" => ["Archery", "Gadgeteer", "Munitions", "Power Armor", "Laser Sword"],
			"Martial" => ["Dual Blades", "Fighting Claws", "Single Blade", "Unarmed"],
			"Mentalist" => ["Telepathy", "Telekinesis"],
			"Brick" => ["Might", "Heavy Weapons", "Earth"],
			"Mystic" => ["Celestial", "Darkness", "Arcane Sorcery", "Bestial Supernatural", "Infernal Supernatural"]
		}[chr_class]
	end

	
end
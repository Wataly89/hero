module RollHelper
	def self.retrieve_rolls
		response=HTTParty.get("http://roll.diceapi.com/json/18d6").parsed_response
		response["dice"].each_slice(3).to_a
	end

end
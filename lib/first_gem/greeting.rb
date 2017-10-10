modlue FirstGem::Greeting
	def self.greet_user(user, greeting = 'Hello')
		"#{greeting} #{user}"
	end
end


# This is how you would use this
# FirstGem::Greeting.greet_user('Thomas', 'GoodBye')
# FirstGem::Greeting.greet_user('Thomas')
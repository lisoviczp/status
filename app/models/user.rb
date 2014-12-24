class User < ActiveRecord::Base
	has_many :ploys
	# has_many :waves, through: :ploys

	has_many :favorites
	has_many :favorite_ploys, through: :favorites, source: :ploy

	def full_name
		"#{first_name} #{last_name}"
	end

	def user_ploys(user)
		my_ploys = []

		Ploy.all.each do |ploy|
			if ploy.user == user
				my_ploys << ploy
			end
		end
		my_ploys
	end

	def other_ploys(user)
		other_ploys = []

		Ploy.all.each do |ploy|
			if ploy.user != user
				other_ploys << ploy
			end
		end
		other_ploys
	end

	def get_matches(user)
		all_my_ploys = user_ploys(user)
		all_other_ploys = other_ploys(user)
		matching_ploys = []

		all_other_ploys.each do |other_ploy|
			all_my_ploys.each do |my_ploy|
				if other_ploy.date == my_ploy.date && other_ploy.city == my_ploy.city && other_ploy.state == my_ploy.state
					matching_ploys << other_ploy
				end
			end
		end

		matching_ploys
	end

end

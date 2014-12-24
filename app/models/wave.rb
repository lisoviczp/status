class Wave < ActiveRecord::Base
	has_many :ploys
	has_many :users, through: :ploys
end

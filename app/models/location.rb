class Location < ActiveRecord::Base
	geocoded_by :address

	has_many :users
	has_many :photos

end

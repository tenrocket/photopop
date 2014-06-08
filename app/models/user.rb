class User < ActiveRecord::Base

	has_many :photos
	has_many :posts
	has_many :trips
	has_many :comments, as: :commentable

	# has_secure_password
	# validates_presence_of :email
	# validates_uniqueness_of :email

	def self.from_omniauth(auth)
		where(auth.slice(:provider, :uid)).first_or_initialize.tap do |user|
			user.provider = auth.provider
			user.uid = auth.uid
			user.name = auth.info.name
			user.oauth_token = auth.credentials.token
			user.oauth_expires_at = Time.at(auth.credentials.expires_at)
			user.save!
		end
	end

	def facebook
		@graph ||= Koala::Facebook::API.new(oauth_token)
		# graph.put_picture(params["picture_path"])
	end
end

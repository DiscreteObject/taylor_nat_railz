class User < ActiveRecord::Base
	attr_accessible :username, :email, :password, :password_confirmation

	validates_presence_of :username, :email, :password_digest
	validates_uniqueness_of :username, :email

	has_secure_password

end
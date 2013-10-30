class User < ActiveRecord::Base
	attr_accessible :username, :email, :password

	validates_presence_of :username, :email, :password
	validates_uniqueness_of :username, :email

end
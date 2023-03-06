class User < ActiveRecord::Base
    has_many :projects
    has_many :skills
    # validates :username, :presence => true
    # validates :email, :presence => true
    # validates :password, :presence => true

   
end
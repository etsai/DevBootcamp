class User < ActiveRecord::Base
  attr_accessible :username, :email, :password
end

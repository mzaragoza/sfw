class Admin < ActiveRecord::Base
  # Include default devise modules. Others available are:

  devise :database_authenticatable, :registerable,
             :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :first_name, :last_name, :email, :password, :password_confirmation, :remember_me
  # attr_accessible :title, :body
end

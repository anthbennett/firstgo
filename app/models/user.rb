class User < ActiveRecord::Base
	has_one :user_profile
	has_many :client_users
	has_many :clients, through: :client_users
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User < ActiveRecord::Base
  has_many :addfiles
  # Include default devise modules. Others available are:
  #  :lockable, :timeoutable and :omniauthable, :confirmable,
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable
end

class User < ApplicationRecord
  has_many :saved_recipes
  has_many :recipes, through: :saved_recipes

  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end

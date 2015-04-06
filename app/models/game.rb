class Game < ActiveRecord::Base
  has_many :scores, dependent: :destroy
  has_many :players, through: :scores
  accepts_nested_attributes_for :scores, :players 
end
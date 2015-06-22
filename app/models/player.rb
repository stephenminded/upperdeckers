class Player < ActiveRecord::Base
  has_many :rosters
  has_many :attendances
  has_many :teams, through: :rosters
  has_many :games, through: :attendances
end

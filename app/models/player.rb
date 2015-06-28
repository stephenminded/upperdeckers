class Player < ActiveRecord::Base
  has_many :roster_players
  has_many :rosters, through: :roster_players
  has_many :attendances
  has_many :games, through: :attendances
end

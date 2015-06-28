class Roster < ActiveRecord::Base
  belongs_to :team
  has_many :players, through: :roster_players
end

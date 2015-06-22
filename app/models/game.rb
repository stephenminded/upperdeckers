class Game < ActiveRecord::Base
  belongs_to :game_location
  belongs_to :team
  belongs_to :opponent
  has_many :players, through: :attendances
end

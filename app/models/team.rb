class Team < ActiveRecord::Base
  has_one :roster
  has_many :games
end

class RosterPlayer < ActiveRecord::Base
  belongs_to :player
  belongs_to :roster
end

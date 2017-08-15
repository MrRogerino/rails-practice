class Team < ApplicationRecord
  has_many :players
  belongs_to :division
  belongs_to :coach
  belongs_to :owner

  has_one :conference, through: :division, source: 'conference'


end

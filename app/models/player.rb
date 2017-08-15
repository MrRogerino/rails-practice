class Player < ApplicationRecord
  belongs_to :team
  has_one :coach, through: :team, source: 'coach'
end

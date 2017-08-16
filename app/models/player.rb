class Player < ApplicationRecord
  belongs_to :team
  has_one :coach, through: :team, source: 'coach'

  def full_name
    "#{self.first_name} #{self.last_name}"
  end

  def height
    "#{self.feet} ft. #{self.inches} in."
  end

end

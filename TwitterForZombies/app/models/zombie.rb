class Zombie < ActiveRecord::Base
  scope :rotting, where(rotting:  true)
  scope :fresh, where("age < 20")
  scope :recent, order("created_at desc").limit(3)

  has_one :brain, dependent: :destroy
  before_save :make_rotting

  def make_rotting
    self.rotting = true if age > 20
  end

end

class Projects < ActiveRecord::Base
  # Remember to create a migration!
  validates :name, uniqueness: true
  validates :name, presence: true
end

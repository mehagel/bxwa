class Projects < ActiveRecord::Base
  # Remember to create a migration!
  attr_accessor :name, :url
  validates :name, uniqueness: true
end

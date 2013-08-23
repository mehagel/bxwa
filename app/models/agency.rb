class Agency < ActiveRecord::Base
  # attr_accessor :name, :url
  validates :url, uniqueness: true
  validates :name, uniqueness: true
  validates :name, presence: true
end
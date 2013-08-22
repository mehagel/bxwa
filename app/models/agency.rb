class Agency < ActiveRecord::Base
  attr_accessor :name, :url
  validates :url, uniqueness: true
end
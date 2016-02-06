class Agency < ActiveRecord::Base
  attr_accessor :name, :url
  validates :url, uniqueness: true
  validates :name, uniqueness: true
  validates :name, presence: true
  has_many  :projects
end

	def get_agencies
	
	end
class CreateAgencyTable < ActiveRecord::Migration
	validates :name, presence: true
	has many :projects
  def change
    create_table :agencies do |t|
      t.string :name
      t.string :url
      t.timestamps
    end
  end
end

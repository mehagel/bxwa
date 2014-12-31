class CreateAgencyTable < ActiveRecord::Migration
  def change
    create_table :agencies do |t|
      t.string 	:name
      t.string 	:url
      t.string  :classification
      t.timestamps
    end
  end
end

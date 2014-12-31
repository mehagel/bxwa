class CreateProjectTable < ActiveRecord::Migration
  def change
  	create_table :projects do |t|
  		t.string :project_name
  		t.string :bid_date
  		t.string :city
  		t.string :state
      t.string :classification
      t.string :url
      t.string :owner
      t.string :AE
      t.string :notes
      t.string :description
      t.string :engineer_estimate
      t.string :contact
  		t.timestamps
  	end
  end
end

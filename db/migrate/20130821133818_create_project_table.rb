class CreateProjectTable < ActiveRecord::Migration
  def change
  	create_table :projects do |t|
  		t.string :project_name
  		t.string :plans
  		t.string :url
  		t.string :city
  		t.string :state
  		t.string :bid_date
      t.string :classification

  		t.timestamps
  	end
  end
end

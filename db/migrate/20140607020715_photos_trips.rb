class PhotosTrips < ActiveRecord::Migration
  def change
  	create_table :photos_trips do |t|
  		t.integer :photo_id
  		t.integer :trip_id
  	end
  end
end

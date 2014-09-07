class CreateProducts < ActiveRecord::Migration
  def up
    create_table :products do |t|
    	t.string "ad_title"
    	t.string "rent_type"
    	t.integer "prise"
    	t.string "area"
    	t.string "owner_type"
    	t.string "condition"
    	t.string "extra"
      t.timestamps
    end
  end

  def down
  	drop_table :products
  end
end

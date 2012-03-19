class CreateOrders < ActiveRecord::Migration
  def self.up
    drop_table :orders
    
    create_table :orders do |t|
      t.integer :customer_id
      t.integer :address_id

      t.timestamps
    end
    
    change_table :orders do |t|
      t.column :status, "ENUM('In process', 'Successful', 'Declined')"
    end
  end
    
  def self.down
    drop_table :orders
  end
end

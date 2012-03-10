class CreateStockCategories < ActiveRecord::Migration
  def self.up
    create_table :stock_categories do |t|
      t.string :title, :null => false
    end
    
    StockCategory.create!(:title => "Games")
    StockCategory.create!(:title => "Software")
    
    add_column  :stock, :stock_category_id, :integer, :null => false
    add_column  :stock, :featured, :integer, :null => false, :default => 0  
  end
  
  def self.down
    drop_table :stock_categories
    
    remove_column :stock, :stock_category_id
    remove_column :stock, :featured
  end
end

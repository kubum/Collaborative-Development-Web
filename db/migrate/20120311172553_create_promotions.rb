class CreatePromotions < ActiveRecord::Migration
  def change
    create_table :promotions do |t|
      t.string :title
      t.string :url
      t.binary :image

      t.timestamps
    end
  end
end

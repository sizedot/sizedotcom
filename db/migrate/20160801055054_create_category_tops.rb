class CreateCategoryTops < ActiveRecord::Migration
  def change
    create_table :category_tops do |t|
      t.string :division
      t.string :productname
      t.integer :brandlist_id
      t.timestamps null: false
    end
  end
end

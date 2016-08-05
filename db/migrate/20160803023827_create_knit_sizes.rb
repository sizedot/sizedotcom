class CreateKnitSizes < ActiveRecord::Migration
  def change
    create_table :knit_sizes do |t|
      t.string :sizename
      t.string :corsize
      t.float :chestwidth
      t.float :shoulderwidth
      t.float :sleeve
      t.float :totallength
      t.integer :categorytop_id

      t.timestamps null: false
    end
  end
end

class CreateJeansSizes < ActiveRecord::Migration
  def change
    create_table :jeans_sizes do |t|
      t.integer :sizename
      t.string :corsize
      t.float :waistwidth
      t.float :hipwidth
      t.float :thighwidth
      t.float :raiselength
      t.float :hemwidth
      t.float :totallength
      t.integer :categorybottom_id


      t.timestamps null: false
    end
  end
end

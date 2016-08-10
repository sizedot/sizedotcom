class CreateSizedata < ActiveRecord::Migration
  def change
    create_table :sizedata do |t|
      t.string :brandname
      t.string :division
      t.string :productname
      t.string :sizename
      t.string :fit

      # t.integer :member_id

      t.timestamps null: false
    end
  end
end

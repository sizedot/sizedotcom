class CreateShoesSizes < ActiveRecord::Migration
  def change
    create_table :shoes_sizes do |t|
      t.string :korsize
      t.string :ussize
      t.string :uksize
      t.string :eursize
      t.string :japsize
      t.string :width
      t.integer :categoryacc_id

      t.timestamps null: false
    end
  end
end

class CreateBrandlists < ActiveRecord::Migration
  def change
    create_table :brandlists do |t|
      t.string :brandname
      t.timestamps null: false
    end
  end
end

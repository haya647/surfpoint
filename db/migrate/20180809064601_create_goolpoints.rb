class CreateGoolpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :goolpoints do |t|
      t.decimal :lat, precision: 11, scale: 8
      t.decimal :lng , precision: 11, scale: 8

      t.timestamps
    end
  end
end

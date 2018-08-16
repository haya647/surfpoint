class CreateCurrentpoints < ActiveRecord::Migration[5.2]
  def change
    create_table :currentpoints do |t|
      t.decimal :lat , precision: 11, scale: 8
      t.decimal :lng , precision: 11, scale: 8
      t.string :name
      t.timestamps
    end
  end
end

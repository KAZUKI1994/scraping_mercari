class CreateItems < ActiveRecord::Migration[5.1]
  def change
    create_table :items do |t|
      t.integer :code
      t.string :url
      t.string :name
      t.decimal :price
      t.decimal :tax_price
      t.boolean :soldout

      t.timestamps
    end
  end
end

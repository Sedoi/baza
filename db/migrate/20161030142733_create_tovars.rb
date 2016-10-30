class CreateTovars < ActiveRecord::Migration[5.0]
  def change
    create_table :tovars do |t|
      t.string :name
      t.string :number
      t.string :price
      t.string :summa

      t.timestamps
    end
  end
end

class CreateAlcohols < ActiveRecord::Migration[5.1]
  def change
    create_table :alcohols do |t|
      t.string :name
      t.integer :price
      t.string :character
      t.string :image
      t.string :kind
      t.string :placephoto

      t.timestamps
    end
  end
end

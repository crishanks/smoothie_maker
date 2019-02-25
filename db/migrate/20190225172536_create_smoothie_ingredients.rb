class CreateSmoothieIngredients < ActiveRecord::Migration[5.2]
  def change
    create_table :smoothie_ingredients do |t|
      t.string :unit
      t.integer :quantity
      t.integer :smoothie_id
      t.integer :ingredient_id
      t.timestamps
    end
  end
end

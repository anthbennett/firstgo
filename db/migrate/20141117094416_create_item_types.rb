class CreateItemTypes < ActiveRecord::Migration
  def change
    create_table :item_types do |t|
      t.string :name
      t.boolean :is_income

      t.timestamps
    end
  end
end

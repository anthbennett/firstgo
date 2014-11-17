class CreateItems < ActiveRecord::Migration
  def change
    create_table :items do |t|
      t.references :item_type, index: true
      t.decimal :value

      t.timestamps
    end
  end
end

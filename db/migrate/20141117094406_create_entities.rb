class CreateEntities < ActiveRecord::Migration
  def change
    create_table :entities do |t|
      t.string :name
      t.string :tfn
      t.string :abn
      t.string :address
      t.string :phone_number

      t.timestamps
    end
  end
end

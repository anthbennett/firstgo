class CreateWorksheets < ActiveRecord::Migration
  def change
    create_table :worksheets do |t|
      t.decimal :interest
      t.decimal :rent
      t.decimal :account_fees

      t.timestamps
    end
  end
end

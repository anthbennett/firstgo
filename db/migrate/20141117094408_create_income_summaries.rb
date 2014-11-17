class CreateIncomeSummaries < ActiveRecord::Migration
  def change
    create_table :income_summaries do |t|
      t.decimal :trust
      t.decimal :individual
      t.decimal :company

      t.timestamps
    end
  end
end

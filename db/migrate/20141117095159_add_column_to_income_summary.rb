class AddColumnToIncomeSummary < ActiveRecord::Migration
  def change
    add_reference :income_summaries, :client, index: true
  end
end

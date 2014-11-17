class AddColumnToWorksheet < ActiveRecord::Migration
  def change
    add_reference :worksheets, :client, index: true
  end
end

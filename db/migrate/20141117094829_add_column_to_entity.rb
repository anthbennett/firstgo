class AddColumnToEntity < ActiveRecord::Migration
  def change
    add_reference :entities, :client, index: true
  end
end

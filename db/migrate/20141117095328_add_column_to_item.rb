class AddColumnToItem < ActiveRecord::Migration
  def change
    add_reference :items, :worksheet, index: true
  end
end

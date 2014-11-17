class Item < ActiveRecord::Base
  belongs_to :item_type
  belongs_to :worksheet
end

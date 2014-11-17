class Worksheet < ActiveRecord::Base
has_many :items
belongs_to :client
end

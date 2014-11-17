class Entity < ActiveRecord::Base
belongs_to :client
has_many :income_summaries
has_many :worksheets
end

class Gift < ApplicationRecord
  belongs_to :donor
  belongs_to :activity
end

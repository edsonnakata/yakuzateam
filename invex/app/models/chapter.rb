class Chapter < ApplicationRecord
  belongs_to :user
  belongs_to :history
end

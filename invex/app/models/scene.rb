class Scene < ApplicationRecord
  belongs_to :history
  has_many :falas
end

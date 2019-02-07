class Capitulo < ApplicationRecord
  belongs_to :usuarios
  belongs_to :historia
end

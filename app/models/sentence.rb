class Sentence < ApplicationRecord
  has_many :entities, dependent: :destroy
end

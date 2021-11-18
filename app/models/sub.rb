class Sub < ApplicationRecord
  # dependent: :destroy will destroy all assiocated topics if the destroyed
  has_many :topics, dependent: :destroy
end

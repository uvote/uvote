class Vote < ApplicationRecord
  belongs_to :contestant
  belongs_to :criterium
  enum vote_type: [:up, :down]
end

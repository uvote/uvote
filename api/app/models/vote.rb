class Vote < ApplicationRecord
  belongs_to :contestant
  belongs_to :criterium
  enum vote_type: [:up, :down]

  validates_uniqueness_of :voter_id, scope: [:criterium_id, :contestant_id]
end

class Event < ApplicationRecord
  belongs_to :user
  has_many :contestants
end

class Event < ApplicationRecord
  belongs_to :user
  has_many :contestants
  has_many :criteria
end

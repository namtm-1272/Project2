class Event < ApplicationRecord
  has_many :discounts, dependent: :destroy
end

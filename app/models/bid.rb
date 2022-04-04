class Bid < ApplicationRecord
  belongs_to :item
  belongs_to :user

  monetize :amount_cents
end

class Gift < ApplicationRecord
  belongs_to :friend
  validates :name, :presence => true
  validates_numericality_of :price, :greater_than => 0.0
end

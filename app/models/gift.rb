class Gift < ApplicationRecord
  belongs_to :friend
  validates :friend_id => true

  
end

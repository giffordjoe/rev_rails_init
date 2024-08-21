class Friend < ApplicationRecord
    has_many :gifts

    accepts_nested_attributes_for :gifts, allow_destroy: true, reject_if: :all_blank

    validates :first_name, :last_name, :birth_date, :presence => true
    validates :birth_date, comparison: {less_than: Date.today}
end

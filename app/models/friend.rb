class Friend < ApplicationRecord
    has_many :gifts

    validates :first_name, :last_name, :birth_date, :presence => true
    validates :birth_date, comparison: {less_than: Date.today}
end

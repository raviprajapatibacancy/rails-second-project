class Subject < ApplicationRecord
    has_many :books
    validates_presence_of :title
    validates_numericality_of :price, :message=>"Error Message"
end

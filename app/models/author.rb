class Author < ApplicationRecord
    has_many :books
    has_one_attached :profile
    validates :name,  presence: true
    validates :profile, attached: true, content_type: { in: 'image/png', message: 'is not a PNG' }, size: { less_than: 1.megabytes , message: 'is not given between size' }
end

class Book < ApplicationRecord
    belongs_to :subject
    belongs_to :author
    has_one_attached :image
    validates :profile, attached: true, content_type: { in: 'image/png', message: 'is not a PNG' }, size: { less_than: 1.megabytes , message: 'is not given between size' }
end

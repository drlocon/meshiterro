class PostImage < ApplicationRecord
  has_one_attached :ima
  belongs_to :user
end

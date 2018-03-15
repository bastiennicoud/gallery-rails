class Picture < ApplicationRecord
  validates :title, presence: true
  validates :path, presence: true

  belongs_to :gallery
end

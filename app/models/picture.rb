class Picture < ApplicationRecord
  validates :title, presence: true
  validates :path, presence: true
end

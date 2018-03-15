class Gallery < ApplicationRecord
  validates :title, presence: true
  has_many :pictures
end

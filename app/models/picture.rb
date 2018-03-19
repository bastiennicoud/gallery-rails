class Picture < ApplicationRecord
  has_attached_file :path, path: "bastien/:id/:filename"
  validates_attachment_content_type :path, content_type: /\Aimage\/.*\z/
  validates :title, presence: true

  belongs_to :gallery
end

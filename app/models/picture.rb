class Picture < ApplicationRecord
  has_attached_file :path, storage: :s3, s3_credentials: Proc.new{|a| a.instance.s3_credentials }
  validates :title, presence: true
  validates :path, presence: true

  belongs_to :gallery

  def s3_credentials
    {
      bucket: ENV['AWS_BUCKET'],
      access_key_id: ENV['AWS_ACCESS_KEY_ID'],
      secret_access_key: ENV['AWS_SECRET_ACCESS_KEY']
    }
  end
end

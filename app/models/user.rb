class User < ApplicationRecord
  mount_uploader :photo, FileUploader
  validates :name, presence: true, length: {minimum: 2}
end
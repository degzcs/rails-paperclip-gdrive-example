# == Schema Information
#
# Table name: products
#
#  id                 :integer          not null, primary key
#  title              :string
#  description        :string
#  created_at         :datetime         not null
#  updated_at         :datetime         not null
#  photo_file_name    :string
#  photo_content_type :string
#  photo_file_size    :integer
#  photo_updated_at   :datetime
#

class Product < ApplicationRecord
  #
  # Paperclip config
  #

  has_attached_file :photo,
    :styles => { :medium => "300x300", :thumb => '50x50' },
    :google_drive_options => {
      :path => proc { |style| "#{style}_#{id}_#{photo.original_filename}" }
    }

  #
  # Validations
  #

  validates_attachment_content_type :file, content_type: /\Aimage\/.*\z/
end

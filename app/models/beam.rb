class Beam < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  has_attached_file :image, styles: { large: "3584x1792>", small: "500x250>" }
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

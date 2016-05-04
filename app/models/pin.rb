class Pin < ActiveRecord::Base
  has_and_belongs_to_many :boards
  belongs_to :user
  has_attached_file :image, styles: { show: "636x360", index: "318x180>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
  validates :image, attachment_presence: true
  validates :title, presence: true
  validates :description, presence: true
end
	


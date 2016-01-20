class Product < ActiveRecord::Base
  has_many :parts

  accepts_nested_attributes_for :parts,
                  reject_if: proc { |attributes| attributes['name'].blank? },
                  allow_destroy: true

  has_attached_file :image, styles: { medium: "300x300>", thumb: "100x100>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :image, content_type: /\Aimage\/.*\Z/
end

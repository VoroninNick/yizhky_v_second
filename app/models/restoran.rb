class Restoran < ActiveRecord::Base
  attr_accessible :name, :slug, :content, :avatar

  attr_accessible :short_description, :description, :about, :position, :logo, :main_image
  attr_accessible :address, :phone_number, :time_of_work

  has_attached_file :logo,
                    url:'/assets/images/svg/:id_image_:style.:extension',
                    path:':rails_root/public:url'

  validates_attachment :logo, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif', 'image/svg+xml'] }

  has_attached_file :main_image,
                    styles: { thumb: "220x145>", large: "750x500#" },
                    convert_options: { thumb: "-quality 94 -interlace Plane", large: "-quality 94 -interlace Plane" },
                    url: "/assets/images/:class/:id/image_:style.:extension",
                    path:':rails_root/public:url'
  validates_attachment :main_image, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif', 'image/svg+xml'] }


  has_attached_file :avatar, styles:{
                               thumb: '120x120#'
                           },
                    url:'/assets/images/restorans/:class/:id/image_:style.:extension',
                    path:':rails_root/public:url'

  validates_attachment :avatar, content_type: { content_type: ['image/jpg', 'image/jpeg', 'image/png', 'image/gif', 'image/svg+xml'] }

  has_many :categories

  validates :name, presence: true
  validates :slug, presence: true, uniqueness: true

  # default_scope { order('created_at DESC') }

  def to_param
    slug
  end

  def friendly_url
    self.slug = name.parameterize
  end

  before_save :set_position

  protected

  def set_position
    self.position ||= 1 + (Restoran.where('id=?',id).maximum(:position) || 0)
  end
end

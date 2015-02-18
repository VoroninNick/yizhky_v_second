class IndexBanner < ActiveRecord::Base
  attr_accessible :name, :position, :published

  has_many :products

end

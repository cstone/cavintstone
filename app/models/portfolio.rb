class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :title, :website, :portfolio_image_cache, :remove_portfolio_image, :portfolio_category_id, :technology_ids

  mount_uploader :portfolio_image, PortfolioImageUploader

  has_and_belongs_to_many :technologies
  belongs_to :portfolio_category

  def to_param
    "#{id}-#{title.parameterize}"
  end
end

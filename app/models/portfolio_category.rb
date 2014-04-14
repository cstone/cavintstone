class PortfolioCategory < ActiveRecord::Base
  attr_accessible :name

  has_many :portfolios
end

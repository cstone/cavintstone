class Portfolio < ActiveRecord::Base
  attr_accessible :description, :portfolio_image, :title, :website
end

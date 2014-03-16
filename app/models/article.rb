class Article < ActiveRecord::Base
  attr_accessible :body, :published, :title, :published_at

  default_scope order('published_at DESC')
  scope :published, where(published: true)
  scope :draft, where(published: false)
end

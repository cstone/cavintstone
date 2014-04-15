class Article < ActiveRecord::Base
  attr_accessible :body, :published, :title, :published_at, :article_image, :remove_article_image, :article_image_cache

  default_scope order('published_at DESC')

  mount_uploader :article_image, ArticleImageUploader

  scope :published, where(published: true)
  scope :draft, where(published: false)

end

class Article < ActiveRecord::Base
  attr_accessible :body, :published, :title

  default_scope order('published_at DESC')
end

class RemoveActiveFromArticles < ActiveRecord::Migration
  def up
    remove_column :articles, :active
  end

  def down
    add_column :articles, :active, :boolean
  end
end

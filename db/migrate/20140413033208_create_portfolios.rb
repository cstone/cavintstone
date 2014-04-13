class CreatePortfolios < ActiveRecord::Migration
  def change
    create_table :portfolios do |t|
      t.string :title
      t.string :portfolio_image
      t.text :description
      t.string :website

      t.timestamps
    end
  end
end

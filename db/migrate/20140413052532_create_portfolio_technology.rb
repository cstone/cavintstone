class CreatePortfolioTechnology < ActiveRecord::Migration
  def up
    create_table :portfolios_technologies, id: false do |t|
      t.belongs_to :portfolio
      t.belongs_to :technology
    end
  end

  def down
    drop_table :portfolios_technologies
  end
end

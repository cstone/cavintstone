class AddResumeTechnolgyJoin < ActiveRecord::Migration
  def up
    create_table :resumes_technologies, id: false do |t|
      t.belongs_to :resume
      t.belongs_to :technology
    end
  end

  def down
    drop_table :resumes_technologies
  end
end

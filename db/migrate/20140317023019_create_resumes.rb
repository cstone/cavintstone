class CreateResumes < ActiveRecord::Migration
  def change
    create_table :resumes do |t|
      t.string :resume_pdf

      t.timestamps
    end
  end
end

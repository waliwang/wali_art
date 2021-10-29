class CreateCurriculumvitaes < ActiveRecord::Migration[6.1]
  def change
    create_table :curriculumvitaes do |t|
      t.string :name
      t.string :education
      t.text :description
      t.string :url

      t.timestamps
    end
  end
end

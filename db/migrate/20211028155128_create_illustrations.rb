class CreateIllustrations < ActiveRecord::Migration[6.1]
  def change
    create_table :illustrations do |t|
      t.string :title
      t.text :content
      t.string :years
      t.string :image
      t.string :label

      t.timestamps
    end
  end
end

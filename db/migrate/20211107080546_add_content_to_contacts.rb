class AddContentToContacts < ActiveRecord::Migration[6.1]
  def change
    add_column :contacts, :content, :text
  end
end

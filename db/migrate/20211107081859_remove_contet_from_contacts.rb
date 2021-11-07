class RemoveContetFromContacts < ActiveRecord::Migration[6.1]
  def change
    remove_column :contacts, :contet, :text
  end
end

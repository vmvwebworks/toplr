class CreateTopLists < ActiveRecord::Migration[5.2]
  def change
    create_table :top_lists do |t|
      t.timestamps
      t.belongs_to :user
    end
  end
end

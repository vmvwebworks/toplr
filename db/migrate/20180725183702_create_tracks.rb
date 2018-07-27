class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.belongs_to :top_list
      t.string :name
      t.string :link
      t.timestamps
    end
  end
end

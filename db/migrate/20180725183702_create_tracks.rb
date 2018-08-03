class CreateTracks < ActiveRecord::Migration[5.2]
  def change
    create_table :tracks do |t|
      t.belongs_to :user
      t.string :name
      t.string :link
      t.string :sort
      t.timestamps
    end
  end
end

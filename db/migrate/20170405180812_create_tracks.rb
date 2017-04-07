class CreateTracks < ActiveRecord::Migration[5.0]
  def change
    create_table :tracks do |t|
      t.string :company
      t.string :note

      t.timestamps
    end
  end
end

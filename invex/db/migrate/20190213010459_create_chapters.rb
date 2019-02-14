class CreateChapters < ActiveRecord::Migration[5.2]
  def change
    create_table :chapters do |t|
      t.references :user, foreign_key: true
      t.references :history, foreign_key: true
      t.string :capitulo

      t.timestamps
    end
  end
end

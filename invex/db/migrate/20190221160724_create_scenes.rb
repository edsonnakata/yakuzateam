class CreateScenes < ActiveRecord::Migration[5.2]
  def change
    create_table :scenes do |t|
      t.text :imagem
      t.references :history, foreign_key: true

      t.timestamps
    end
  end
end

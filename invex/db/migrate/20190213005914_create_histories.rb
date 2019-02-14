class CreateHistories < ActiveRecord::Migration[5.2]
  def change
    create_table :histories do |t|
      t.text :titulo
      t.string :nome
      t.text :descricao
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

class CreateArtefatos < ActiveRecord::Migration[5.2]
  def change
    create_table :artefatos do |t|
      t.references :usuario
      t.references :historia
      t.string :titulo
      t.string :coordenada
      t.text :descricao
      t.string :e_pago

      t.timestamps
    end
  end
end

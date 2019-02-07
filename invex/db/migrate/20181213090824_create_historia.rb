class CreateHistoria < ActiveRecord::Migration[5.2]
  def change
    create_table :historia do |t|
      t.references :usuario
      t.string :titulo
      t.string :nome
      t.text :descricao
      t.string :e_pago

      t.timestamps
    end
  end
end

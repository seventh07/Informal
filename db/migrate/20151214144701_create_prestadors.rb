class CreatePrestadors < ActiveRecord::Migration
  def change
    create_table :prestadors do |t|
      t.string :nome
      t.string :cpf
      t.string :telefone
      t.references :servico, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

class CreateInformalidades < ActiveRecord::Migration
  def change
    create_table :informalidades do |t|
      t.string :titulo
      t.string :descricao
      t.references :prestador, index: true, foreign_key: true
      t.references :cliente, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

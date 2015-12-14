class CreateAvaliacaos < ActiveRecord::Migration
  def change
    create_table :avaliacaos do |t|
      t.float :nota
      t.references :informalidade, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

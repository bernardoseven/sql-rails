class CreateDocentes < ActiveRecord::Migration
  def change
    create_table :docentes do |t|
      t.string :nom_docente
      t.string :ape_docente
      t.integer :ingreso_docente

      t.timestamps null: false
    end
  end
end

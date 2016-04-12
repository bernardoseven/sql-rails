class CreateNota < ActiveRecord::Migration
  def change
    create_table :nota do |t|
      t.float :nota_final
      t.string :semestre
      t.references :alumno, index: true, foreign_key: true
      t.references :docente, index: true, foreign_key: true
      t.references :asignatura, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

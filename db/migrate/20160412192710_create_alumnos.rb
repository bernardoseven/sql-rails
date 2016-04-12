class CreateAlumnos < ActiveRecord::Migration
  def change
    create_table :alumnos do |t|
      t.string :nom_alumno
      t.string :ape_alumno
      t.integer :edad_alumno
      t.string :sexo_alumno
      t.integer :ingreso_alumno
      t.references :carrera, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end

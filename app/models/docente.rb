class Docente < ActiveRecord::Base
    has_many :notas
    has_many :alumnos, through: :notas
    has_many :asignaturas, through: :notas
end

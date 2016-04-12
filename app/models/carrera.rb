class Carrera < ActiveRecord::Base
    has_many :alumnos
    has_many :asignaturas
end

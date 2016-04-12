class Nota < ActiveRecord::Base
  belongs_to :alumno
  belongs_to :docente
  belongs_to :asignatura
end

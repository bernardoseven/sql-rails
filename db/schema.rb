# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20160412193818) do

  create_table "alumnos", force: :cascade do |t|
    t.string   "nom_alumno"
    t.string   "ape_alumno"
    t.integer  "edad_alumno"
    t.string   "sexo_alumno"
    t.integer  "ingreso_alumno"
    t.integer  "carrera_id"
    t.datetime "created_at",     null: false
    t.datetime "updated_at",     null: false
  end

  add_index "alumnos", ["carrera_id"], name: "index_alumnos_on_carrera_id"

  create_table "asignaturas", force: :cascade do |t|
    t.string   "desc_asig"
    t.integer  "horas_asig"
    t.integer  "carrera_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "asignaturas", ["carrera_id"], name: "index_asignaturas_on_carrera_id"

  create_table "carreras", force: :cascade do |t|
    t.string   "desc_carrera"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  create_table "docentes", force: :cascade do |t|
    t.string   "nom_docente"
    t.string   "ape_docente"
    t.integer  "ingreso_docente"
    t.datetime "created_at",      null: false
    t.datetime "updated_at",      null: false
  end

  create_table "nota", force: :cascade do |t|
    t.float    "nota_final"
    t.string   "semestre"
    t.integer  "alumno_id"
    t.integer  "docente_id"
    t.integer  "asignatura_id"
    t.datetime "created_at",    null: false
    t.datetime "updated_at",    null: false
  end

  add_index "nota", ["alumno_id"], name: "index_nota_on_alumno_id"
  add_index "nota", ["asignatura_id"], name: "index_nota_on_asignatura_id"
  add_index "nota", ["docente_id"], name: "index_nota_on_docente_id"

end

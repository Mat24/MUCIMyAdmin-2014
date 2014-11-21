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

ActiveRecord::Schema.define(version: 20141121205026) do

  create_table "modulo_calificadas", force: true do |t|
    t.integer  "paciente_id"
    t.string   "nombre_completo"
    t.string   "genero"
    t.string   "tipo_documento"
    t.string   "numero_identificacion"
    t.string   "fecha_nacimiento"
    t.integer  "edad"
    t.string   "lugar_nacimiento"
    t.string   "estrato_economico"
    t.string   "nivel_ingresos"
    t.string   "etapa_ciclo_vital"
    t.string   "ciudad"
    t.string   "departamento"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "nivel_escolaridad"
    t.string   "estado_civil"
    t.string   "afiliacion"
    t.string   "motivo_calificacion"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo_calificadas", ["paciente_id"], name: "index_modulo_calificadas_on_paciente_id"

  create_table "modulo_receptoras", force: true do |t|
    t.integer  "paciente_id"
    t.string   "nombre_entidad"
    t.string   "tipo_entidad"
    t.string   "nombre_receptor"
    t.string   "cargo"
    t.string   "ciudad"
    t.string   "departamento"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.date     "fecha_recepcion"
    t.date     "fecha_valoracion"
    t.date     "fecha_elaboracion"
    t.date     "fecha_notificacion"
    t.string   "numero_dictamen"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo_receptoras", ["paciente_id"], name: "index_modulo_receptoras_on_paciente_id"

  create_table "modulo_remitentes", force: true do |t|
    t.integer  "paciente_id"
    t.string   "nombre"
    t.string   "nombre_entidad"
    t.string   "tipo_entidad"
    t.string   "cargo"
    t.string   "ciudad"
    t.string   "departamento"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.string   "fecha_solicitud"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo_remitentes", ["paciente_id"], name: "index_modulo_remitentes_on_paciente_id"

  create_table "modulo_rols", force: true do |t|
    t.integer  "paciente_id"
    t.string   "institucion"
    t.string   "nivel_grado"
    t.string   "direccion"
    t.string   "telefono"
    t.string   "email"
    t.text     "observaciones"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "modulo_rols", ["paciente_id"], name: "index_modulo_rols_on_paciente_id"

  create_table "pacientes", force: true do |t|
    t.integer  "user_id"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "pacientes", ["user_id"], name: "index_pacientes_on_user_id"

  create_table "rols", force: true do |t|
    t.integer  "user_id"
    t.string   "nombre"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "rols", ["user_id"], name: "index_rols_on_user_id"

  create_table "users", force: true do |t|
    t.string   "email",                  default: "", null: false
    t.string   "username",               default: "", null: false
    t.string   "encrypted_password",     default: "", null: false
    t.string   "reset_password_token"
    t.datetime "reset_password_sent_at"
    t.datetime "remember_created_at"
    t.integer  "sign_in_count",          default: 0,  null: false
    t.datetime "current_sign_in_at"
    t.datetime "last_sign_in_at"
    t.string   "current_sign_in_ip"
    t.string   "last_sign_in_ip"
    t.datetime "created_at"
    t.datetime "updated_at"
  end

  add_index "users", ["email"], name: "index_users_on_email", unique: true
  add_index "users", ["reset_password_token"], name: "index_users_on_reset_password_token", unique: true

end

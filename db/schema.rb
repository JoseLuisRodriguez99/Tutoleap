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

ActiveRecord::Schema.define(version: 20180822053853) do

  create_table "documents", force: :cascade do |t|
    t.string "tipo"
    t.string "archivo"
    t.string "estado"
    t.integer "user_document_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_document_id"], name: "index_documents_on_user_document_id"
  end

  create_table "places", force: :cascade do |t|
    t.string "nombre"
    t.string "direccion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "qualifications", force: :cascade do |t|
    t.integer "valor"
    t.string "descripcion"
    t.integer "user_estudiante_id"
    t.integer "user_docente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["user_docente_id"], name: "index_qualifications_on_user_docente_id"
    t.index ["user_estudiante_id"], name: "index_qualifications_on_user_estudiante_id"
  end

  create_table "subjects", force: :cascade do |t|
    t.string "nombre"
    t.string "descripcion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tutorials", force: :cascade do |t|
    t.datetime "fecha"
    t.string "nombre"
    t.string "descripcion"
    t.string "modalidad"
    t.float "presupuesto"
    t.integer "place_tutorial_id"
    t.integer "subject_tutorial_id"
    t.integer "user_estudiante_id"
    t.integer "user_docente_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["place_tutorial_id"], name: "index_tutorials_on_place_tutorial_id"
    t.index ["subject_tutorial_id"], name: "index_tutorials_on_subject_tutorial_id"
    t.index ["user_docente_id"], name: "index_tutorials_on_user_docente_id"
    t.index ["user_estudiante_id"], name: "index_tutorials_on_user_estudiante_id"
  end

  create_table "users", force: :cascade do |t|
    t.string "documento"
    t.string "nombre"
    t.string "direccion"
    t.string "telefono"
    t.string "email"
    t.string "nive_academico"
    t.string "tipo_use"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

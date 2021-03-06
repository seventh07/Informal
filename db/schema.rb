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

ActiveRecord::Schema.define(version: 20151214165725) do

  create_table "avaliacaos", force: :cascade do |t|
    t.float    "nota"
    t.integer  "informalidade_id"
    t.datetime "created_at",       null: false
    t.datetime "updated_at",       null: false
  end

  add_index "avaliacaos", ["informalidade_id"], name: "index_avaliacaos_on_informalidade_id"

  create_table "clientes", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "informalidades", force: :cascade do |t|
    t.string   "titulo"
    t.string   "descricao"
    t.integer  "prestador_id"
    t.integer  "cliente_id"
    t.datetime "created_at",   null: false
    t.datetime "updated_at",   null: false
  end

  add_index "informalidades", ["cliente_id"], name: "index_informalidades_on_cliente_id"
  add_index "informalidades", ["prestador_id"], name: "index_informalidades_on_prestador_id"

  create_table "prestadors", force: :cascade do |t|
    t.string   "nome"
    t.string   "cpf"
    t.string   "telefone"
    t.integer  "servico_id"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  add_index "prestadors", ["servico_id"], name: "index_prestadors_on_servico_id"

  create_table "servicos", force: :cascade do |t|
    t.string   "nome"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

end

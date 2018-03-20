class CreateDeveloperProgrammings < ActiveRecord::Migration[5.1]
  def change
    create_table :developer_programmings do |t|
      t.references :developer, foreign_key: true
      t.references :programming_language, foreign_key: true

      t.timestamps
    end
    add_index :developer_programmings, [:developer_id, :programming_language_id], unique: true,  name: 'index_developer_programmings_on_dev_id_and_prog_lang_id'
  end
end

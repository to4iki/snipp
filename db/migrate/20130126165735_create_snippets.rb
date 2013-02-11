class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string  :title, null: false
      t.text    :fragment
      t.boolean :pin, default: false

      t.timestamps
    end
  end
end

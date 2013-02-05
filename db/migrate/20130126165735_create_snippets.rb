class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string  :title, null: false
      t.text    :fragment

      t.timestamps
    end
  end
end

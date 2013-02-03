class CreateSnippets < ActiveRecord::Migration
  def change
    create_table :snippets do |t|
      t.string  :title, null: false
      t.string  :command, null: false
      t.text    :description
      t.integer :del_flg

      t.timestamps
    end
  end
end

class CreateListItems < ActiveRecord::Migration[5.1]
  def change
    create_table :list_items do |t|
      t.string :title
      t.string :status
      t.references :list, foreign_key: true

      t.timestamps
    end
  end
end

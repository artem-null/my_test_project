class CreateComments < ActiveRecord::Migration[6.0]
  def change
    create_table :comments do |t|
      t.string :text
      t.timestamps
      t.references :user
      t.references :article
    end
  end
end

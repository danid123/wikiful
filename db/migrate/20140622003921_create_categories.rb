class CreateCategories < ActiveRecord::Migration
  def change
    create_table :categories do |t|
      t.string :article_categories

      t.timestamps
    end
  end
end

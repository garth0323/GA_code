class CreateFavorite < ActiveRecord::Migration
  def change
    create_table :favorites do |t|
      t.string :name
      t.string :oid
    end
  end
end

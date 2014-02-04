class CreateActresses < ActiveRecord::Migration
  def change
    create_table :actresses do |t|
      t.string :actress
      t.string :twitter_url

      t.timestamps
    end
  end
end

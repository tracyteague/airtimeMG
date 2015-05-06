class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
    	t.string :avatar
    	t.integer :subscribers
    	t.string :username

      t.timestamps null: false
    end
  end
end

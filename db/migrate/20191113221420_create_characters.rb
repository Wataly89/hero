class CreateCharacters < ActiveRecord::Migration[5.2]
  def change
    create_table :characters do |t|
    	t.string :name
    	t.string :chr_class
    	t.text :powers
    	t.text :skills
    	t.text :perks
    	t.text :disadvantages
    	t.integer :str
    	t.integer :dex
    	t.integer :con
    	t.integer :int
    	t.integer :ego
    	t.integer :pre
      t.timestamps
    end
  end
end

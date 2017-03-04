class CreateShirokumatters < ActiveRecord::Migration
  def change
    create_table :shirokumatters do |t|
      t.text :content

      t.timestamps null: false
    end
  end
end

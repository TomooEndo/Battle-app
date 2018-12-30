class CreateCards < ActiveRecord::Migration[5.2]
  def change
    create_table :cards do |t|
      t.string :Username
      t.string :Title
      t.string :Enemyname
      t.date :Cdate
      t.string :Cplace
      t.string :Ccomment

      t.timestamps
    end
  end
end

class CreateKasitumons < ActiveRecord::Migration[5.2]
  def change
    create_table :kasitumons do |t|
      t.string :nitiji
      t.string :koumoku
      t.string :shitumonsya
      t.text :shitumonbun
      t.string :nitiji1
      t.string :hentousya1
      t.text :hentoubun1
      t.string :nitiji2
      t.string :hentousya2
      t.text :hentoubun2
      t.string :nitiji3
      t.string :hentousya3
      t.text :hentoubun3

      t.timestamps
    end
  end
end

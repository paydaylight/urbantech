class CreateCloths < ActiveRecord::Migration[5.2]
  def change
    create_table :cloths do |t|

      t.timestamps
    end
  end
end

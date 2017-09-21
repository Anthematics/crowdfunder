class CreateHats < ActiveRecord::Migration[5.1]
  def change
    create_table :hats do |t|

      t.timestamps
    end
  end
end

class CreateRoombaActions < ActiveRecord::Migration[5.0]
  def change
    create_table :roomba_actions do |t|

      t.timestamps
    end
  end
end

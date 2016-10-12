class CreateViews < ActiveRecord::Migration[5.0]
  def change
    create_table :views do |t|
      t.string :remote_ip

      t.timestamps
    end
  end
end

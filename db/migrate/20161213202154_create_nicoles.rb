class CreateNicoles < ActiveRecord::Migration[5.0]
  def change
    create_table :nicoles do |t|
      t.string :password

      t.timestamps
    end
  end
end

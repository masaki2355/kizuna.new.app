class CreateTweets < ActiveRecord::Migration[7.0]
  def change
    create_table :tweets do |t|
      t.string :schoolname
      t.string :event

      t.timestamps
    end
  end
end

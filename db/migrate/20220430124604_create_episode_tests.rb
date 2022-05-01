class CreateEpisodeTests < ActiveRecord::Migration[7.0]
  def change
    create_table :episode_tests do |t|
      t.references :episode, null: false, foreign_key: true
      t.references :test_procedure, null: false, foreign_key: true
      t.string :result

      t.timestamps
    end
  end
end

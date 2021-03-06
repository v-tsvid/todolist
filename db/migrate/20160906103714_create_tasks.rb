# frozen_string_literal: true
class CreateTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :tasks do |t|
      t.string :title
      t.integer :status
      t.datetime :deadline
      t.boolean :done
      t.references :project, foreign_key: true

      t.timestamps
    end
  end
end

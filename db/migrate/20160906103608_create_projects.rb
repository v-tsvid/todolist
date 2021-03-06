# frozen_string_literal: true
class CreateProjects < ActiveRecord::Migration[5.0]
  def change
    create_table :projects do |t|
      t.string :title
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end

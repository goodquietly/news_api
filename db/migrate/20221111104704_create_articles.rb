# frozen_string_literal: true

class CreateArticles < ActiveRecord::Migration[7.0] # rubocop:disable Style/Documentation
  def change
    create_table :articles do |t|
      t.string :title
      t.text :anounce
      t.text :body
      t.boolean :published, default: false, null: false

      t.timestamps
    end
  end
end

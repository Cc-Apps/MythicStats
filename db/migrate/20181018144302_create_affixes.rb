# frozen_string_literal: true

class CreateAffixes < ActiveRecord::Migration[5.2]
  def change
    create_table :affixes do |t|
      t.text :name
      t.text :description

      t.timestamps
    end
  end
end

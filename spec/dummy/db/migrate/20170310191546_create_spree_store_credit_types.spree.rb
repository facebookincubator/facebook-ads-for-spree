# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.

# This migration comes from spree (originally 20150118212101)
class CreateSpreeStoreCreditTypes < ActiveRecord::Migration[4.2]
  def change
    create_table :spree_store_credit_types do |t|
      t.string :name
      t.integer :priority
      t.timestamps null: false
    end
    add_index :spree_store_credit_types, :priority
  end
end

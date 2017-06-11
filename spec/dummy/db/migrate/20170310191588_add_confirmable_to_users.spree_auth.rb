# Copyright (c) 2017-present, Facebook, Inc.
# All rights reserved.

# This migration comes from spree_auth (originally 20141002154641)
class AddConfirmableToUsers < ActiveRecord::Migration
  def change
    add_column :spree_users, :confirmation_token, :string
    add_column :spree_users, :confirmed_at, :datetime
    add_column :spree_users, :confirmation_sent_at, :datetime
  end
end

# frozen_string_literal: true

module Types
  module Inputs
    class UserAddListItemInput < ::Types::Inputs::UserListItemInput
      I18N_PATH = 'graphql.inputs.user.add_list_item'

      graphql_name 'UserAddListItemInput'
    end
  end
end

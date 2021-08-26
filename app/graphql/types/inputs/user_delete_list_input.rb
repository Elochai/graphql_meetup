# frozen_string_literal: true

module Types
  module Inputs
    class UserDeleteListInput < ::Types::Base::InputObject
      I18N_PATH = 'graphql.inputs.user.delete_list'

      graphql_name 'DeleteInput'

      description I18n.t("#{I18N_PATH}.desc")

      argument :id,
               ID,
               required: true,
               description: I18n.t("#{I18N_PATH}.args.id")
    end
  end
end

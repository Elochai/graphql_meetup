# frozen_string_literal: true

module Types
  class CreateListType < Base::Object
    I18N_PATH = 'graphql.types.list_type'

    graphql_name 'CreateListType'
    description I18n.t("#{I18N_PATH}.desc")

    field :id,
          ID,
          null: false,
          description: I18n.t("#{I18N_PATH}.id")

    field :lists,
          ListNodeType,
          null: false,
          description: I18n.t("#{I18N_PATH}.lists")

    def lists
      object.user_account.lists
    end
  end
end

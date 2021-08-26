# frozen_string_literal: true

module Types
  class ListNodeType < Base::Object
    I18N_PATH = 'graphql.types.list_node_type'

    graphql_name 'ListNodeType'
    description I18n.t("#{I18N_PATH}.desc")

    field :nodes,
          [ListType],
          null: false,
          description: I18n.t("#{I18N_PATH}.nodes")

    def nodes
      object
    end
  end
end

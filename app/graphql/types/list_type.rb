# frozen_string_literal: true

module Types
  class ListType < Base::Object
    graphql_name 'ListType'

    description I18n.t('graphql.types.list_type.desc')

    field :id,
          ID,
          null: false,
          description: I18n.t('graphql.types.list_type.id')

    field :deleted_list_id,
          ID,
          null: false,
          description: I18n.t('graphql.types.list_type.deleted_list_id')

    field :name,
          String,
          null: false,
          description: I18n.t('graphql.types.list_type.name')

    field :items,
          [Types::MovieType],
          null: true,
          description: I18n.t('graphql.types.list_type.items')

    def deleted_list_id
      object.id
    end

    def items
      object.movies
    end
  end
end

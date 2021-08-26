# frozen_string_literal: true

module Types
  class DeletedListType < Base::Object
    graphql_name 'DeletedListType'

    description I18n.t('graphql.types.deleted_list_type.desc')

    field :deleted_list_id,
          ID,
          null: false,
          description: I18n.t('graphql.types.deleted_list_type.deleted_list_id')

    def deleted_list_id
      object.id
    end
  end
end

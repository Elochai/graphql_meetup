# frozen_string_literal: true

module Mutations
  module User
    module List
      class AddItem < RestrictedMutation
        type Types::ListsMovieType

        description I18n.t('graphql.mutations.user.list_add_item.desc')

        argument :input, Types::Inputs::UserAddListItemInput, required: true

        def resolve(input:)
          match_operation ListsMovie::Operation::Create.call(
            params: input.to_h
          )
        end
      end
    end
  end
end

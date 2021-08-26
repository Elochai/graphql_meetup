# frozen_string_literal: true

module Mutations
  module User
    module List
      class RemoveItem < RestrictedMutation
        type Types::RemovedMovieType

        description I18n.t('graphql.mutations.user.list_remove_item.desc')

        argument :input, Types::Inputs::UserRemoveListItemInput, required: true

        def resolve(input:)
          match_operation ListsMovie::Operation::Destroy.call(
            params: input.to_h
          )
        end
      end
    end
  end
end

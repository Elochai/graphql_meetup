# frozen_string_literal: true

module Mutations
  module User
    module List
      class Destroy < RestrictedMutation
        type Types::DeletedListType

        description I18n.t('graphql.mutations.user.delete_list.desc')

        argument :input, Types::Inputs::UserDeleteListInput, required: true

        def resolve(input:)
          match_operation ::List::Operation::Destroy.call(
            params: input.to_h
          )
        end
      end
    end
  end
end

# frozen_string_literal: true

module Mutations
  module User
    module List
      class Create < RestrictedMutation
        type Types::CreateListType

        description I18n.t('graphql.mutations.user.create_list.desc')

        argument :input, Types::Inputs::UserCreateListInput, required: true

        def resolve(input:)
          match_operation ::List::Operation::Create.call(
            params: input.to_h.merge(current_user: current_user)
          )
        end
      end
    end
  end
end

# frozen_string_literal: true

module Mutations
  module User
    class RemoveFavoriteMovie < RestrictedMutation
      type Types::RemovedMovieType

      description I18n.t('graphql.mutations.user.remove_favorite_movie.desc')

      argument :input, Types::Inputs::UserRemoveFavoriteMovieInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::RemoveFavoriteMovie.call(
          params: input.to_h.merge(current_user: current_user)
        )
      end
    end
  end
end

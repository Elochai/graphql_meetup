# frozen_string_literal: true

module Mutations
  module User
    class AddFavoriteMovie < RestrictedMutation
      type Types::FavoriteMovieType

      description I18n.t('graphql.mutations.user.add_favorite_movie.desc')

      argument :input, Types::Inputs::UserAddFavoriteMovieInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::AddFavoriteMovie.call(
          params: input.to_h.merge(current_user: current_user)
        )
      end
    end
  end
end

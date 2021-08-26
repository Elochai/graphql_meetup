# frozen_string_literal: true

module Mutations
  module User
    class AddWatchlistMovie < RestrictedMutation
      type Types::WatchlistMovieType

      description I18n.t('graphql.mutations.user.add_favorite_movie.desc')

      argument :input, Types::Inputs::UserAddWatchlistMovieInput, required: true

      def resolve(input:)
        match_operation ::User::Operation::AddWatchlistMovie.call(
          params: input.to_h.merge(current_user: current_user)
        )
      end
    end
  end
end

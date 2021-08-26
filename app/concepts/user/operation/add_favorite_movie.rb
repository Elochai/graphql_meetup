# frozen_string_literal: true

module User::Operation
  class AddFavoriteMovie < Trailblazer::Operation
    step :find_movie
    step :mark_movie_as_favorite

    def find_movie(ctx, params:, **)
      ctx['movie'] = Movie.find(params[:movie_id])
    end

    def mark_movie_as_favorite(ctx, movie:, params:, **)
      ctx['result'] = FavoriteMovie.create(user_account: params[:current_user], movie: movie).movie
    end
  end
end

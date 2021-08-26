# frozen_string_literal: true

module User::Operation
  class RemoveFavoriteMovie < Trailblazer::Operation
    step :find_favorite_movie
    step :unmark_favorite

    def find_favorite_movie(ctx, params:, **)
      ctx['favorite_movie'] = params[:current_user].favorite_movies.find_by!(movie_id: params[:movie_id])
    end

    def unmark_favorite(ctx, favorite_movie:, **)
      ctx['result'] = favorite_movie.destroy
    end
  end
end

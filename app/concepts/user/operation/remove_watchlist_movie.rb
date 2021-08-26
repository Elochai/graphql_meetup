# frozen_string_literal: true

module User::Operation
  class RemoveWatchlistMovie < Trailblazer::Operation
    step :find_watchlist_movie
    step :mark_movie_as_favorite

    def find_watchlist_movie(ctx, params:, **)
      ctx['watchlist_movie'] = params[:current_user].watchlist_movies.find_by!(movie_id: params[:movie_id])
    end

    def mark_movie_as_favorite(ctx, watchlist_movie:, **)
      ctx['result'] = watchlist_movie.destroy
    end
  end
end

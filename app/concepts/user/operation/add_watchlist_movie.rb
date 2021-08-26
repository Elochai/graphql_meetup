# frozen_string_literal: true

module User::Operation
  class AddWatchlistMovie < Trailblazer::Operation
    step :find_movie
    step :add_movie_to_watchlist

    def find_movie(ctx, params:, **)
      ctx['movie'] = Movie.find(params[:movie_id])
    end

    def add_movie_to_watchlist(ctx, movie:, params:, **)
      ctx['result'] = WatchlistMovie.create(user_account: params[:current_user], movie: movie).movie
    end
  end
end

# frozen_string_literal: true

module Movie::Operation
  class Trending < Trailblazer::Operation
    step :set_result

    def set_result(ctx, **)
      latest_movies = WatchlistMovie.order(created_at: :desc).limit(100)
      ctx['result'] = latest_movies.group_by { |m| m.movie }
                                   .sort_by { |_k, movies| movies.size }
                                   .reverse
                                   .map(&:first)
                                   .compact
                                   .first(10)
    end
  end
end

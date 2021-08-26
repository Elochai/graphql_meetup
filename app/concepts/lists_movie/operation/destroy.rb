# frozen_string_literal: true

module ListsMovie::Operation
  class Destroy < Trailblazer::Operation
    step :find_lists_movie
    step :destroy_lists_movie

    def find_lists_movie(ctx, params:, **)
      ctx['lists_movie'] = ListsMovie.find_by(list_id: params[:list_id], movie_id: params[:movie_id])
    end

    def destroy_lists_movie(ctx, lists_movie:, **)
      ctx['result'] = lists_movie.destroy
    end
  end
end

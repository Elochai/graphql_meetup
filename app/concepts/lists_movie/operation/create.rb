# frozen_string_literal: true

module ListsMovie::Operation
  class Create < Trailblazer::Operation
    step :find_list
    step :create_lists_movie

    def find_list(ctx, params:, **)
      ctx['list'] = List.find(params[:list_id])
    end

    def create_lists_movie(ctx, list:, params:, **)
      ctx['result'] = list.lists_movies.create(movie_id: params[:movie_id])
    end
  end
end

# frozen_string_literal: true

module Movie::Operation
  class Index < Trailblazer::Operation
    step :set_result

    def set_result(ctx, filter: nil, **)
      movies = ::Movie.all
      movies = movies.where('title LIKE ?', "%#{filter}%") if filter.present?
      ctx['result'] = movies
    end
  end
end

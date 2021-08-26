# frozen_string_literal: true

module Types
  class ListsMovieType < Base::Object
    graphql_name 'ListsMovieType'
    description I18n.t('graphql.types.lists_movie_type.desc')

    field :id,
          ID,
          null: false,
          description: I18n.t('graphql.types.lists_movie_type.id')

    field :removed_movie_id,
          ID,
          null: false,
          description: I18n.t('graphql.types.lists_movie_type.removed_movie_id')

    field :items,
          [Types::MovieType],
          null: true,
          description: I18n.t('graphql.types.lists_movie_type.items')

    def removed_movie_id
      object.id
    end

    def items
      object.list.movies
    end
  end
end

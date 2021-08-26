# frozen_string_literal: true

module Types
  class FavoriteMovieType < Base::Object
    I18N_PATH = 'graphql.types.favorite_movie_type'

    graphql_name 'FavoriteMovieType'
    description I18n.t("#{I18N_PATH}.desc")

    field :id, ID, null: false, description: I18n.t("#{I18N_PATH}.fields.id")
    field :title, String, null: false, description: I18n.t("#{I18N_PATH}.fields.title")
    field :is_favorite, Boolean, null: true, description: I18n.t("#{I18N_PATH}.fields.is_favorite")
    field :removed_movie_id, ID, null: false, description: I18n.t("#{I18N_PATH}.fields.removed_movie_id")

    def removed_movie_id
      object.id
    end

    def is_favorite
      object.persisted?
    end
  end
end

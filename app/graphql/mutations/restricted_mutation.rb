# frozen_string_literal: true

module Mutations
  # Mutation authenticated by refresh token
  class RestrictedMutation < BaseMutation
    def ready?(**_kwargs)
      raise JWTSessions::Errors::Unauthorized unless current_user

      true
    end
  end
end

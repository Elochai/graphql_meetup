# frozen_string_literal: true

module List::Operation
  class Create < Trailblazer::Operation
    step :create_list

    def create_list(ctx, params:, **)
      ctx['result'] = params[:current_user].lists.create(name: params[:name])
    end
  end
end

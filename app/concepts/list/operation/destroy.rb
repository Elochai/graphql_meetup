# frozen_string_literal: true

module List::Operation
  class Destroy < Trailblazer::Operation
    step :find_list
    step :destroy_list

    def find_list(ctx, params:, **)
      ctx['list'] = List.find(params[:id])
    end

    def destroy_list(ctx, list:, **)
      ctx['result'] = list.destroy
    end
  end
end

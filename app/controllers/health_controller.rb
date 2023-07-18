# frozen_string_literal: true

class HealthController < ApplicationController
  def index
    StubWorker.perform_async(3)
    render json: {ok: true}
  end
end

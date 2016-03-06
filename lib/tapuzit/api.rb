require 'grape'

module Tapuzit
  class API < Grape::API

    helpers do
      def logger
        Tapuzit::API.logger
      end
    end

    version 'v1', using: :path

    content_type :json, 'application/json'
    default_format :json

    post :log do
      level = params[:level]
      message = params[:message]
      logger.send(level.to_sym, message)
    end

  end
end

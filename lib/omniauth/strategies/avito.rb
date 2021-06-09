# frozen_string_literal: true

require 'omniauth'
require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Avito < ::OmniAuth::Strategies::OAuth2
      class NoRawData < StandardError; end

      API_VERSION = '2.0'

      DEFAULT_SCOPE = ''

      option :name, 'avito'

      option :client_options, {
        site: 'https://www.avito.ru/',
        token_url: 'https://api.avito.ru/token',
        authorize_url: 'https://avito.ru/oauth'
      }

      option :authorize_options, %i[scope display]

      option :redirect_url, nil

      private

      def callback_url
        options.redirect_url || (full_host + script_name + callback_path)
      end
    end
  end
end

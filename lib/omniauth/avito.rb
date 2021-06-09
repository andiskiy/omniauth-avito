# frozen_string_literal: true

require 'omniauth/avito/version'
require 'omniauth'

module OmniAuth
  module Strategies
    class Error < StandardError; end

    autoload :Avito, 'omniauth/strategies/avito'
  end
end

OmniAuth.config.add_camelization 'avito', 'Avito'

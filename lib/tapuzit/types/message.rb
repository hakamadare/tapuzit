require 'chronic'
require 'hashie'

module Tapuzit
  module Types
    class Message < Hashie::Dash

      include Hashie::Extensions::KeyConversion
      include Hashie::Extensions::MergeInitializer
      include Hashie::Extensions::MethodAccess
      include Hashie::Extensions::IndifferentAccess
      include Hashie::Extensions::StrictKeyAccess
      include Hashie::Extensions::Dash::Coercion

      property :recipient, coerce: String
      property :message, coerce: String
      property :timestamp, coerce: String #FIXME this needs to be coerced to a Time

    end
  end
end

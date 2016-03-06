require 'chronic'
require 'time'
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

      def to_time
        Chronic.parse self.timestamp
      end

      def to_seconds
        self.to_time.strftime('%s')
      end

    end
  end
end

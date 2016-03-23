require 'sidekiq'

require 'tapuzit/types/telegrammessage'

module Tapuzit
  module Worker
    class Telegram
      include Sidekiq::Worker

      def perform(telegram)
        begin
          # try to parse the message
          parsed = _parse(telegram)

          # if you can parse it, schedule a job
          scheduled = _schedule(parsed)

          # return some sort of response
          _respond(scheduled)

        rescue StandardError => e
          raise e
        end
      end

      private

      def _parse(telegram)
        begin
          telegram = Tapuzit::Types::TelegramMessage.new(telegram) unless telegram.kind_of?(Tapuzit::Types::TelegramMessage)

          Tapuzit::Types::ParsedMessage.new(telegram.text)

        rescue StandardError => e
          raise e
        end
      end

      def _schedule(parsed)

      end

      def _respond(scheduled)

      end

    end
  end
end

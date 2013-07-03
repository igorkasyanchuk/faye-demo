class RealtimeCommentsController < FayeRails::Controller
  channel '/comments' do
    subscribe do
      Rails.logger.debug "\n\nRealtimeCommentsController::\nReceived on #{channel}: #{inspect}\n\n"

      message
    end
  end
end
class CountersChannel < ApplicationCable::Channel
  def subscribed
    stream_from "counters"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end

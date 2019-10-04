class Counter < ApplicationRecord
    def increment!
        self.value += 1
        ActionCable.server.broadcast('counters', self)
    end
end

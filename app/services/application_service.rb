# frozen_string_literal: true

class ApplicationService
  def self.call(**kwargs, &block)
    new(**kwargs, &block).call
  end
end

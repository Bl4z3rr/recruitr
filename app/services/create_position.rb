# frozen_string_literal: true

class CreatePosition < ApplicationService

  def initialize(params)
    @params = params
  end

  def call
    Position.new(params)
  end

  private

  attr_reader :params

end

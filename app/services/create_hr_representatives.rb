# frozen_string_literal: true

class CreateHrRepresentatives < ApplicationService

  def initialize(name:, surname:, email:)
    @name = name
    @surname = surname
    @email = email
  end

  def call
    HrRepresentative.new(name: name, surname: surname, email: email).save
  end

  private

  attr_reader :name, :surname, :email

end

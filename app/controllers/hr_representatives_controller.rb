# frozen_string_literal: true

class HrRepresentativesController < ApplicationController
  def index
    @hr = HrRepresentative.first
  end

  def create
    HrRepresentative.new(name: 'Bob', surname: 'Zit', email: 'bob@bob.com').save
  end
end

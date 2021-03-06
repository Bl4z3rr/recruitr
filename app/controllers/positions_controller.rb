# frozen_string_literal: true

class PositionsController < ApplicationController
  def index
    @positions = Position.all
  end

  def show
    @position = Position.find(params[:id])
  end

  def new
    @position = Position.new
  end

  def create
    @position = CreatePositions.call(params: set_params)

    @position ? redirect_to(position_path(@position)) : render(:new)
  end

  def set_params
    params.require(:position).permit(:name, :description, :development_type, :seniority_level)
  end
end

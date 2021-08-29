# frozen_string_literal: true

class CandidatesController < ApplicationController

  def index
    @candidates = Candidate.all
  end

  def show
    @candidate = Candidate.find(params[:id])
  end

  def new
    @candidate = Candidate.new
  end

  def create
    @candidate = CreateCandidates.call(params: set_params)

    @candidate ? redirect_to(candidate_path(@candidate)) : render(:new)
  end

  def set_params
    params.require(:candidate).permit(:name, :surname, :email, :development_type, :seniority_level)
  end

end

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
    @candidate = CreateCandidates.call(set_params)
    if @candidate.save
      redirect_to candidate_path(@candidate)
    else
      render :new
    end
  end

  def set_params
    params.require(:candidate).permit(:name, :surname, :email, :development_type, :seniority_level)
  end

end

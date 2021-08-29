  # frozen_string_literal: true

class RecruitersController < ApplicationController
  def index
    @recruiters = Recruiter.all
  end

  def show
    @recruiter = Recruiter.find(params[:id])
  end

  def new
    @recruiter = Recruiter.new
  end

  def create
    @recruiter = CreateRecruiters.call(params: set_params)

    @recruiter ? redirect_to(recruiter_path(@recruiter)) : render(:new)
  end

  def set_params
    params.require(:recruiter).permit(:name, :surname, :email, :development_type)
  end

end

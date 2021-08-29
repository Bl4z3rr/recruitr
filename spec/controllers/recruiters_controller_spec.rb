# frozen_string_literal: true

require 'rails_helper'

RSpec.describe RecruitersController do
  render_views

  let(:recruiter) { create :recruiter }

  describe 'GET #index' do
    before { recruiter }

    it 'renders recruiters' do
      get :index

      expect(response).to be_successful
      expect(response.body).to include(recruiter.email)
    end
  end

  describe 'GET #show' do
    it 'renders recruiters' do
      get :show, params: { id: recruiter.id }

      expect(response).to be_successful
      expect(response.body).to include(recruiter.name)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new, params: { id: recruiter.id }

      expect(response).to be_successful
    end
  end
end

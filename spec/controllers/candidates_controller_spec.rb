# frozen_string_literal: true

require 'rails_helper'

RSpec.describe CandidatesController do
  render_views

  let(:candidate) { create :candidate }

  describe 'GET #index' do
    before { candidate }

    it 'renders candidates' do
      get :index

      expect(response).to be_successful
      expect(response.body).to include(candidate.email)
    end
  end

  describe 'GET #show' do
    it 'renders candidates' do
      get :show, params: { id: candidate.id }

      expect(response).to be_successful
      expect(response.body).to include(candidate.name)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new, params: { id: candidate.id }

      expect(response).to be_successful
    end
  end
end

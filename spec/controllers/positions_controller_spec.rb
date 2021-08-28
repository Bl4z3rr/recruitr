# frozen_string_literal: true

require 'rails_helper'

RSpec.describe PositionsController do
  render_views

  let(:position) { create :position }

  describe 'GET #index' do
    before { position }

    it 'renders positions' do
      get :index

      expect(response).to be_successful
      expect(response.body).to include(position.name)
    end
  end

  describe 'GET #show' do
    it 'renders positions' do
      get :show, params: { id: position.id }

      expect(response).to be_successful
      expect(response.body).to include(position.name)
    end
  end

  describe 'GET #new' do
    it 'returns http success' do
      get :new, params: { id: position.id }

      expect(response).to be_successful
    end
  end
end

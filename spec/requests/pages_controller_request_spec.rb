require 'rails_helper'

RSpec.describe PagesController, type: :controller do
  render_views

  describe "home" do
    it 'should should render the home page template' do
      get :home
      expect(response).to render_template('home')
      expect(response.status).to eq 200
      expect(response.body).to include('Home')
    end
  end

  describe "about" do
    it 'should render the about page template' do
      get :about
      expect(response).to render_template('about')
      expect(response.status).to eq 200
      expect(response.body).to include('About')
    end
  end
end

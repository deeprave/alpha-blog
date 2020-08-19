require 'rails_helper'

RSpec.describe "Pages", type: :request do
  describe 'GET Pages' do
    it 'should render the home page' do
      get ''
      expect(response).to render_template('home')
    end

    it 'should render the about page' do
      get '/about'
      expect(response).to render_template('about')
    end
  end
end

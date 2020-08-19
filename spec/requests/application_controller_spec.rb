require 'rails_helper'

RSpec.describe ApplicationController, type: :request do

  describe "root" do
    it 'should should redirect to /home' do
      get ''
      expect(response).to redirect_to('/home')
      expect(response.status).to eq 301
    end
  end
end

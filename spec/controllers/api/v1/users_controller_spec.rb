require 'rails_helper'

RSpec.describe 'Api::V1::UsersControllers', type: :request do
  describe 'show' do
    subject { get :show, params: { id: 1 } }

    let!(:user) { User.create(email: 'admin@gmail.com', password: '1234') }

    let!(:data_expected) do
      {
        email: 'admin@gmail.com',
        password: '1234'
      }
    end

    it { is_expected.to eq data_expected }
  end
end

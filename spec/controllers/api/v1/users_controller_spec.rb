require 'rails_helper'

RSpec.describe Api::V1::UsersController, type: :controller do
  describe 'show' do
    subject { json_response }

    let!(:send_request) { get :show, params: { id: user.id } }

    let!(:user) { User.create(email: 'barabah@mail.ru', password: '1234') }

    let!(:data_expected) do
      {
        id: user.id,
        email: 'barabah@mail.ru',
        password: '1234'
      }
    end

    it { is_expected.to eq data_expected }
  end
end

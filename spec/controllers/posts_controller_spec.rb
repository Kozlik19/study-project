# frozen_string_literal: true

# Помошник рельс
require 'rails_helper'

RSpec.describe PostsController, type: :controller do
  let!(:post) { Post.create(title: 'Test Post', body: 'This is a test post.') }

  describe 'GET #index' do
    it 'returns a successful response' do
      get :index
      expect(response).to have_http_status(:success)
    end

    it 'assigns @posts' do
      get :index
      expect(assigns(:posts)).to eq([post])
    end
  end

  describe 'GET #show' do
    it 'returns a successful response' do
      get :show, params: { id: post.id }
      expect(response).to have_http_status(:success)
    end
  end

  describe 'POST #create' do
    it 'creates a new post' do
      expect { post :create, params: { post: { title: 'New Post', body: 'This is a new post.' } } }.to change(Post, :count).by(1)
    end
  end
  RSpec.describe Article, type: :model do
    it 'is valid with valid attributes' do
      user = FactoryBot.create(:user)
      article = FactoryBot.build(:article, user: user)
      expect(article).to be_valid
    end
    it 'is not valid without a title' do
      user = FactoryBot.create(:user)
      article = FactoryBot.build(:article, title: nil, user: user)
      expect(article).not_to be_valid
    end
  end
end

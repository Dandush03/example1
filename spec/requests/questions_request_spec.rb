require 'rails_helper'

RSpec.describe "Questions", type: :request do
  let!(:user) {create(:user)}
  let(:question) {build(:question, user_id: user.id)}
  let!(:private_question) {build(:question, :priv , user_id: user.id)}
  let!(:invalid_question) { build(:question)}

  describe '#create' do
    context 'Create Question Successfuly' do
      before do
        post '/api/v1/questions', params: {question: question}, as: :json
      end
  
      it 'return http success' do 
        expect(response).to  have_http_status(:created)
      end
    end

    context 'Create Question Successfuly' do
      before do
        post '/api/v1/questions', params: {question: private_question}, as: :json
      end
  
      it 'return http success' do 
        expect(response).to  have_http_status(:created)
      end
    end

    context 'Create Question Unsuccessfuly' do
      before do
        post '/api/v1/questions', params: {question: invalid_question}, as: :json
      end
  
      it 'return http success' do 
        expect(response).to  have_http_status(:unprocessable_entity)
      end
    end
  end
end

# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Deal, type: :model do
  before do
    @user = FactoryBot.create(:user)
  end

  describe '#create' do
    context 'successfully' do
      it 'is valid when all fields is filled' do
        expect(@user).to be_valid
      end
    end

    context 'unsuccessfully' do
      it 'is invalid without user_id' do
        @user.email = nil
        expect(@user).not_to be_valid
      end

      it 'is invalid without correct user_id' do
        @user.email = 'name'
        expect(@user).not_to be_valid
      end
      it 'is invalid without correct status' do
        @user.password = '11'
        expect(@user).not_to be_valid
      end

    end
  end
  after do
    @user.destroy
  end
end
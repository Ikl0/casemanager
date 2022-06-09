# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Deal, type: :model do
  before do
    @user = FactoryBot.create(:user)
    @deal = FactoryBot.build(:deal, user_id: @user.id)
  end

  describe '#create' do
    context 'successfully' do
      it 'is valid when all fields is filled' do
        expect(@deal).to be_valid
      end
    end

    context 'unsuccessfully' do
      it 'is invalid without user_id' do
        @deal.user_id = nil
        expect(@deal).not_to be_valid
      end

      it 'is invalid without correct user_id' do
        @deal.user_id = '999'
        expect(@deal).not_to be_valid
      end
      it 'is invalid without correct status' do
        @deal.status = 'active'
        expect(@deal).not_to be_valid
      end

    end
  end
  after do
    @user.destroy
  end
end
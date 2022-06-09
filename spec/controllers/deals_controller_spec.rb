require 'rails_helper'


RSpec.describe DealsController, type: :controller do
  before do
    @user = FactoryBot.create(:user)
    @deal = FactoryBot.build(:deal, user_id: @user.id)
  end
  describe "Deal #update" do
    context "with good data" do
      it "updates the wallet and redirects" do
        patch :update, id: @deal.id, deal: { title: "title", status: "New"}
        expect(response).to be_redirect
      end
    end
    context "with bad data" do
      it "does not change the wallet, and re-renders the form" do
        patch :update, id: @wallet.id, wallet: { name: "xyz", balance: "two"}
        expect(response).not_to be_redirect
      end
    end
  end
  end


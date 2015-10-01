require 'rails_helper'

RSpec.describe StateReportingController, type: :controller do

  describe "GET #latest_report" do
    it "returns http success" do
      get :latest_report
      expect(response).to have_http_status(:success)
    end
  end

end

require "rails_helper"

RSpec.describe "Relics API", type: :request do
  # initialize test data
  let!(:relics) { create_list(:relic, 10) } #Add 10 relics to the
  let(:relic_id) { relics.first.id } #Get the first ID of a relic

  # Test suite for GET /relics
  describe "GET /relics" do
    # make HTTP get request before each example
    before { get "/relics" }

    it "returns relics" do
      expect(json).not_to be_empty
      expect(json.size).to eq(10)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /todos/:id
  describe "GET /relics/:id" do
    before { get "/relics/#{relic_id}" }

    context "when the record exists" do
      it "returns the relic" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(relic_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end
  end

  context "when the record does not exist" do
    let(:relic_id) { 100 }

    it "returns status code 404" do
      expect(response).to have_http_status(404)
    end

    it "returns a not found message" do
      expect(response.body).to match(/Couldn't find Relic/)
    end
  end
end

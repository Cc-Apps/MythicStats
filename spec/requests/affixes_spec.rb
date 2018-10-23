# frozen_string_literal: true

require "rails_helper"

RSpec.describe "Affixes API", type: :request do
  # Initialize test data
  let!(:affixes) { create_list(:affix, 15) }
  let(:affix_id) { affixes.first.id }

  # Test suite for GET /affixes
  describe "Get /affixes" do
    # make HTTP get request before each example
    before { get "/affixes" }

    it "returns affixes" do
      expect(json).not_to be_empty
      expect(json.size).to eq(15)
    end

    it "returns status code 200" do
      expect(response).to have_http_status(200)
    end
  end

  # Test suite for GET /affixes/:id
  describe "GET /affixes/:id" do
    before { get "/affixes/#{affix_id}" }

    context "when the record exists" do
      it "returns the todo" do
        expect(json).not_to be_empty
        expect(json["id"]).to eq(affix_id)
      end

      it "returns status code 200" do
        expect(response).to have_http_status(200)
      end
    end

    context "when the record does not exist" do
      let(:affix_id) { 100 }

      it "returns status code 404" do
        expect(response).to have_http_status(404)
      end

      it "returns a not found message" do
        expect(response.body).to match(/Couldn't find Affix/)
      end
    end
  end
end

require 'rails_helper'

describe "Hotskippy API" do
	let(:accept_json) { { "Accept" => "application/json" } }

  describe "GET /photos" do
    it "returns all the photos" do
      FactoryGirl.create :photo, caption: "Pose like a ninja"
      FactoryGirl.create :photo, caption: "Hug a stranger"

      get '/photos', {}, accept_json

      expect(response.status).to eq 200

      body = JSON.parse(response.body)
      photo_captions = body.map { |m| m["title"] }

      expect(photo_captions).to match_array(["Pose like a ninja",
                                           "Hug a stranger"])
    end
  end
end
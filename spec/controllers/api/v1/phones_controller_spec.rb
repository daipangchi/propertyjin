# this test suite isn't work on codeship. problem is in hstore extension. 

require 'spec_helper'
require 'rails_helper'

def json_get(action, query = {})
  get action, {:format => :json}.merge(query)
end

describe Api::V1::PhonesController do

  let!(:phone1) { FactoryGirl.create(:phone) }
  let!(:phone2) { FactoryGirl.create(:phone) }

  let(:index_hash_keys) { ["id", "name", "network", "features", "weight", "size", "akkum", "limited", "notes", "photo_url"] }

  describe "#index" do

    it "should return 200" do
      json_get :index
      expect(response.status).to eq 200
    end

    it "should return right json" do
      json_get :index
      expect(json_response['phones'].count).to eq 2
      expect(json_response['phones'].first.keys).to eq index_hash_keys
    end

  end
end
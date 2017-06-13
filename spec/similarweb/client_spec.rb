require 'spec_helper'

describe Similarweb::Client do

  let(:api_key) { 'abcde-12345' }

  before do
    @client = Similarweb::Client.new(api_key: api_key)
  end

  describe '.api_key' do
    it 'should return the api key' do
      expect( @client.api_key ).to eq(api_key)
    end
  end

  describe '.desktop_visit' do
    before(:each) do
      body = <<-eos
        {
          "meta": {
            "request": {
              "granularity": "Daily",
              "main_domain_only": false,
              "domain": "example.com",
              "country": "world"
            },
            "status": "Success",
            "last_updated": "2017-01-17"
          },
          "visits": [
            {
              "date": "2017-01-16",
              "visits": 1328398.73631
            },
            {
              "date": "2017-01-17",
              "visits": 1547400.88473
            }
          ]
        }
      eos

      start_date = '2017-02'
      end_date = '2017-03'

      stub_request(:get, "http://api.similarweb.com/v1/website/example.com/traffic-and-engagement/visits?api_key=#{api_key}&end_date=#{end_date}&granularity=daily&main_domain_only=false&start_date=#{start_date}").
        with(:headers => {'Accept'=>'*/*', 'Accept-Encoding'=>'gzip;q=1.0,deflate;q=0.6,identity;q=0.3', 'User-Agent'=>'Faraday v0.12.1'}).
        to_return(:status => 200, :body => body, :headers => {})
      @desktop_visit = @client.desktop_visit('example.com', start_date, end_date)
    end

    it 'should return a list of desktop_visit' do
      expect( @desktop_visit ).to have_key('visits')
      expect( @desktop_visit['visits']).to be_a(Array)
    end
  end

end

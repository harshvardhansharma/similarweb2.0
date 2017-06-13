module Similarweb
  class Client
    include AlsoVisited
    include EstimatedVisits
    include SimilarSites
    include CategoryRank
    include Destinations
    include Keywords
    include SocialReferrals
    include Category
    include Engagement
    include Referrals
    include Tags
    include AllReferrals
    include DesktopTraffic::Sources
    include DesktopTraffic::SearchKeyword
    include Traffic::BounceRate
    include Traffic::PageView
    include Traffic::Visit
    include Traffic::VisitDuration
    include Traffic::TotalEngagement

    attr_accessor :api_key, :http_client

    def initialize(args = {})
      args.each do |key, value|
        send(:"#{key}=", value)
      end
      make_http_client!
    end

    private

      def make_http_client!
        base_url = "http://api.similarweb.com/"
        self.http_client = Faraday.new(:url => base_url) do |builder|
          builder.request :url_encoded
          builder.response :follow_redirects, limit: 3
          builder.adapter Faraday.default_adapter
        end
      end
  end
end

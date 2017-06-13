module Similarweb
  module DesktopTraffic
    module SearchKeyword

      # NOTE: start_date, end_date format: YYYY-MM

      def organic_search_keyword(domain, start_date, end_date, limit = nil)
        response = self.http_client.get "v1/website/#{domain}/traffic-sources/organic-search?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&limit=#{limit}"
        JSON.parse(response.body)
      end

      def paid_search_keyword(domain, start_date, end_date, limit = nil)
        response = self.http_client.get "v1/website/#{domain}/traffic-sources/paid-search?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&limit=#{limit}"
        JSON.parse(response.body)
      end

    end
  end
end
module Similarweb
  module DesktopTraffic
    module Sources

      # NOTE: start_date, end_date format: YYYY-MM

      def overview_share(domain, start_date, end_date)
        response = self.http_client.get "v1/website/#{domain}/traffic-sources/overview-share?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false"
        JSON.parse(response.body)
      end

      def overview(domain, start_date, end_date)
        response = self.http_client.get "v1/website/#{domain}/traffic-sources/overview?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false"
        JSON.parse(response.body)
      end

    end
  end
end
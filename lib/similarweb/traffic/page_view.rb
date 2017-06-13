module Similarweb
  module Traffic
    module PageView

      # NOTE: start_date, end_date format: YYYY-MM

      def desktop_page_view(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v1/website/#{domain}/traffic-and-engagement/pages-per-visit?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false&granularity=#{granularity}"
        JSON.parse(response.body)
      end

      def mobile_page_view(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v2/website/#{domain}/mobile-web/pages-per-visit?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&granularity=#{frequency}"
        JSON.parse(response.body)
      end

    end
  end
end
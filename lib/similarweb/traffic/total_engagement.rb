module Similarweb
  module Traffic
    module TotalEngagement

      # NOTE: start_date, end_date format: YYYY-MM

      def visit(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v1/website/#{domain}/total-traffic-and-engagement/visits?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false&granularity=#{granularity}"
        JSON.parse(response.body)
      end

      def pages_per_visit(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v1/website/#{domain}/total-traffic-and-engagement/pages-per-visit?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false&granularity=#{granularity}"
        JSON.parse(response.body)
      end

      def average_visit_duration(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v1/website/#{domain}/total-traffic-and-engagement/average-visit-duration?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false&granularity=#{granularity}"
        JSON.parse(response.body)
      end

      def bounce_rate(domain, start_date, end_date, granularity = 'daily')
        response = self.http_client.get "v1/website/#{domain}/total-traffic-and-engagement/bounce-rate?api_key=#{self.api_key}&start_date=#{start_date}&end_date=#{end_date}&main_domain_only=false&granularity=#{granularity}"
        JSON.parse(response.body)
      end

    end
  end
end

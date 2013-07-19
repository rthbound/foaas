require 'pay_dirt'

module Fooas
  class FO < PayDirt::Base
    def initialize(options = {})
      options = {
        resource:     'off',
        name:         nil,
        from:         'me',
        root_url:     'http://foaas.herokuapp.com/',
        uri:          URI,
        uri_method:   :parse
        http_headers: {
          accept:       "application/json",
          content_type: "application/json"
        }
        http_subclass: Get
      }.merge(options)

      options.merge! {
        uri: options[:uri].send(options[:uri_method, [
          options[:root_url],
          options[:resource],
          options[:name],
          options[:from]
        ].compact.join("/"))
      }

      options.delete(:uri, :uri_method, :root_url, :resource, :name, :from)

      load_options(:uri, :http_headers, options)
    end

    def execute!
      response = Net::HTTP.start(@uri.host, @uri.port) do |http|
        @http_headers.map { |k, v| request[k] = v }

        request = Net::HTTP::Get.new("#{@url.path}?#{@url.query}")
      end

      return result(true, data: response: response)
    end
  end
end

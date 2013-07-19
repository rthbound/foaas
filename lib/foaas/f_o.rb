module Foaas
  class FO < PayDirt::Base
    def initialize(options = {})
      options = {
        resource:     'off',
        name:         nil,
        from:         'me',
        root_url:     'http://foaas.herokuapp.com',
        http_headers: {
          "Accept"       => "application/json",
        }
      }.merge(options)

      options.merge!({
        uri: [
          options[:root_url],
          options[:resource],
          options[:name],
          options[:from]
        ].compact.join("/")
      })

      [:root_url, :resource, :name, :from].map do |o|
        options.delete o
      end

      load_options(:uri, :http_headers, options)
    end

    def execute!
      return result(true, JSON.parse(open(@uri, @http_headers).read))
    end
  end
end

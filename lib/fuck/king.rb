require 'pay_dirt'

module Fuck
  class King < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "king",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

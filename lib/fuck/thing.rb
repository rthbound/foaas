require 'pay_dirt'

module Fuck
  class Thing < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "thing",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

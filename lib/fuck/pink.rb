require 'pay_dirt'

module Fuck
  class Pink < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "pink",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

require 'pay_dirt'

module Fuck
  class Everyone < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "everyone",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

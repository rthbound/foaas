require 'pay_dirt'

module Fuck
  class Donut < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "donut",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end
require 'pay_dirt'

module FOaaS
  class That < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "that",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

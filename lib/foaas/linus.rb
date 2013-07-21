require 'pay_dirt'

module FOaaS
  class Linus < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "linus",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

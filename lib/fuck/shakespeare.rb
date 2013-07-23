module Fuck
  class Shakespeare < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "shakespeare",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

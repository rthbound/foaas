module Fuck
  class Thanks < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "thanks",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

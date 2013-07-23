module Fuck
  class Off < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "off",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

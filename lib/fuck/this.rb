module Fuck
  class This < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "this",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

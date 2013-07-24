module Fuck
  class That
    include Salutations

    def initialize(options = {})
      options = {
        resource: "that",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

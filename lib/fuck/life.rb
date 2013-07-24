module Fuck
  class Life
    include Salutations

    def initialize(options = {})
      options = {
        resource: "life",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

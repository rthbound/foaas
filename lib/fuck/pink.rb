module Fuck
  class Pink
    include Salutations

    def initialize(options = {})
      options = {
        resource: "pink",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

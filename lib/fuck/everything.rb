module Fuck
  class Everything
    include Salutations

    def initialize(options = {})
      options = {
        resource: "everything",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

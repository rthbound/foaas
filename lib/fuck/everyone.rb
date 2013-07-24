module Fuck
  class Everyone
    include Salutations

    def initialize(options = {})
      options = {
        resource: "everyone",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

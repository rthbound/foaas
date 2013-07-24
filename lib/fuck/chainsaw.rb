module Fuck
  class Chainsaw
    include Salutations

    def initialize(options = {})
      options = {
        resource: "chainsaw",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

module Fuck
  class Everything < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "everything",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

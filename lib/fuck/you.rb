module Fuck
  class You < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: "you",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

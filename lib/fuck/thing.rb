module Fuck
  class Thing < PayDirt::Base
    include Salutations

    def initialize(options = {})
      options = {
        resource: options[:thing],
      }.merge(options)

      load_options(:thing, :from, options)
    end
  end
end

module Fuck
  class Pink
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Pink.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "pink",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

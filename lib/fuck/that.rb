module Fuck
  class That
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::That.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "that",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

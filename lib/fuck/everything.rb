module Fuck
  class Everything
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Everything.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "everything",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

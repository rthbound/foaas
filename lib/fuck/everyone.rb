module Fuck
  class Everyone
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Everyone.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "everyone",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

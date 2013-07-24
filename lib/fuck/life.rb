module Fuck
  class Life
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Life.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "life",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

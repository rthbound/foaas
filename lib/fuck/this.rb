module Fuck
  class This
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::This.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "this",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

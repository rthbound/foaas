module Fuck
  class Thanks
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Thanks.new(from: "Me").call
    def initialize(options = {})
      options = {
        resource: "thanks",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

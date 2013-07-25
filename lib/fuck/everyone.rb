module Fuck
  class Everyone
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Everyone.new(from: "Me").call
    #     => #<PayDirt::Result:0x90b53fc @data= {
    #           "message"=>"Everyone can go and fuck off.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "everyone",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

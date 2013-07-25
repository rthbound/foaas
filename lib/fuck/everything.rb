module Fuck
  class Everything
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Everything.new(from: "Me").call
    #     => #<PayDirt::Result:0x908b32c @data= {
    #           "message"=>"Fuck everything.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "everything",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

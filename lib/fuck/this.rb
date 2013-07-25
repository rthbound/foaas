module Fuck
  class This
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::This.new(from: "Me").call
    #     => #<PayDirt::Result:0x8b2d650 @data= {
    #           "message"=>"Fuck this.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "this",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

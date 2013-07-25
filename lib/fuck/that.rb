module Fuck
  class That
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::That.new(from: "Me").call
    #     => #<PayDirt::Result:0x8ba0858 @data={
    #           "message"=>"Fuck that.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "that",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

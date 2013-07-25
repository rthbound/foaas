module Fuck
  class Life
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Life.new(from: "Me").call
    #     => #<PayDirt::Result:0x922e058 @data= {
    #           "message"=>"Fuck my life.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "life",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

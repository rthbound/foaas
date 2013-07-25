module Fuck
  class Thanks
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :from
    # @example
    #   Fuck::Thanks.new(from: "Me").call
    #     => #<PayDirt::Result:0x9309414 @data= {
    #           "message"=>"Fuck you very much.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "thanks",
      }.merge(options)

      load_options(:resource, :from, options)
    end
  end
end

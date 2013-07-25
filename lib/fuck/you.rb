module Fuck
  class You
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::You.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x8aa2dfc @data= {
    #           "message"=>"Fuck you, You.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "you",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

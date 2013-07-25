module Fuck
  class Shakespeare
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Shakespeare.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x913fc3c @data= {
    #           "message"=> "You, Thou clay-brained guts, thou knotty-pated fool,
    #                        thou whoreson obscene greasy tallow-catch!",
    #           "subtitle"=>"- Me"
    #         }, # @success=true>
    def initialize(options = {})
      options = {
        resource: "shakespeare",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

module Fuck
  class Outside
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::Off.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x8a544f4 @data= {
    #           "message"=>"You, why don't you go outside and play hide-and-go-fuck-yourself?",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "outside",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

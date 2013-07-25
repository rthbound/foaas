module Fuck
  class King
    include Salutations

    # @param [Hash] options options to send FOaaS
    # @option options [String] :name
    # @option options [String] :from
    # @example
    #   Fuck::King.new(name: "You", from: "Me").call
    #     => #<PayDirt::Result:0x91adffc @data= {
    #           "message"=> "Oh fuck off, just really fuck off you total dickface. Christ You, you are fucking thick.",
    #           "subtitle"=>"- Me"
    #         }, @success=true>
    def initialize(options = {})
      options = {
        resource: "king",
      }.merge(options)

      load_options(:resource, :name, :from, options)
    end
  end
end

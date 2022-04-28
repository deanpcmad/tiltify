module Tiltify
  class Collection
    attr_reader :data, :total, :has_prev, :has_next

    def self.from_response(response, type:)
      body = response.body

      new(
        data: body["data"].map { |attrs| type.new(attrs) },
        total: body["data"].count,
        has_prev: !body["links"]["prev"].blank?,
        has_next: !body["links"]["next"].blank?
      )
    end

    def initialize(data:, total:, has_prev:, has_next:)
      @data = data
      @total = total
      @has_prev = has_prev
      @has_next = has_next
    end
  end
end

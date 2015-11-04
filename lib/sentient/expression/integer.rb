module Sentient
  module Expression
    class Integer
      attr_reader :booleans

      def initialize(bits)
        if bits.respond_to?(:times)
          self.booleans = bits.times.map { Boolean.new }
        else
          self.booleans = bits
        end
      end

      def to_s
        booleans.map(&:to_s).to_s
      end

      def ==(other)
        to_s == other.to_s
      end

      def to_dimacs
        []
      end

      def integer
        self
      end

      private

      attr_writer :booleans
    end
  end
end

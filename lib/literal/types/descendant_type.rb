# frozen_string_literal: true

class Literal::Types::DescendantType
	def initialize(type)
		@type = type
	end

	def inspect = "_Descendant(#{@type})"

	def ===(value)
		Module === value && value < @type
	end
end

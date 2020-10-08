# frozen_string_literal: true

def triangle(colors)
  colors = colors.chars
  colors = colors.each_cons(2).map { |a, b| a == b ? a : ('RGB'.chars - [a, b]).pop } until colors.size == 1
  colors
end

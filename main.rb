def add_colour(colors)
  if colors.length == 2
    case colors.split("").sort.join
    when "BG"
      return "R"
    when "GR"
      return "B"
    when "BR"
      return "G"
    else 
      return colors[0]
    end
  end
end

# R B R G B R B
#  G G B R G G
#   G R G B G
#    B B R R
#     B G R
#      R B
#       G

def triangle(colors)

  if colors.length == 1
    return colors
  end

  while colors.length > 1
    sep_colors = colors.split("").zip(colors.split("").slice(1,colors.length-1))
    sep_colors.delete_at(-1)
    sep_colors = sep_colors.map(&:join)
    colors = ""
    sep_colors.each {|x|
      colors += add_colour(x)
    }
  end
  colors
end


puts triangle("RBRGBRB")
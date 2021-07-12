def printer_errors(s)
    "#{s.scan(/[^a-m]/).length}/#{s.length}"
end

p printer_errors("aaaxbbbbyyhwawiwjjjwwm")
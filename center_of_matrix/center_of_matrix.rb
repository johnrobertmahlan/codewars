def center(mat)
  return nil if mat.flatten.length % 2 == 0
  mat.flatten[(mat.flatten.length.to_f / 2)]
end
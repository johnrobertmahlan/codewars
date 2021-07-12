def contentWeight(bottleWeight, scale)
    match = scale.match(/^(?<scale>\d{1,})\stimes\s(?<dir>larger|smaller)/)
    if match[:dir] == 'larger'
      bottleAlone = (bottleWeight / (match[:scale].to_i + 1))
      contentWeight = bottleAlone * match[:scale].to_i
    else
      bottleAlone = (bottleWeight / (match[:scale].to_i + 1)) * match[:scale].to_i
      contentsAlone = bottleWeight - bottleAlone
    end
end
def nba_cup(result_sheet, to_find)
    wins = 0
    draws = 0
    losses = 0
    scored = 0
    conceded = 0
    total_scored = 0
    total_conceded = 0
    points = 0
    str = ''
    return "" if to_find == ""
    return "#{to_find}:This team didn't play!" if result_sheet.match(/\b#{to_find}\b/) == nil
    result_sheet.split(",").each do |row|
      team = row.match(/#{to_find}/)
      if team
        if row.match(/^#{to_find}/)
          scores = row.scan(/\b\d{1,3}\b/)
          return "Error(float number):#{row}" if row.include?(".")
          scored = scores.first.to_i
          conceded = scores.last.to_i
          total_scored += scored
          total_conceded += conceded
          wins += 1 if scored > conceded
          draws += 1 if scored == conceded
          losses += 1 if scored < conceded
          points += 3 if scored > conceded
          points += 1 if scored == conceded
        else
          scores = row.scan(/\b\d{1,3}\b/)
          return "Error(float number):#{row}" if row.include?(".")
          scored = scores.last.to_i
          conceded = scores.first.to_i
          total_scored += scored
          total_conceded += conceded
          wins += 1 if scored > conceded
          draws += 1 if scored == conceded
          losses += 1 if scored < conceded
          points += 3 if scored > conceded
          points += 1 if scored == conceded
        end 
      end
      str = "#{to_find}:W=#{wins};D=#{draws};L=#{losses};Scored=#{total_scored};Conceded=#{total_conceded};Points=#{points}"
    end
    return str
end
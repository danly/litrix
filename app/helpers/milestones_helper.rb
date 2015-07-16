module MilestonesHelper
  def ordinal(week)
    oneDigit = week % 10
    twoDigits = week % 100
    if oneDigit == 1 && twoDigits!= 11
      return week.to_s + 'st'
    elsif oneDigit == 2 && twoDigits!= 12
      return week.to_s + 'nd'
    elsif oneDigit == 3 && twoDigits!= 13
      return week.to_s + 'rd'
    else
      return week.to_s + 'th'
    end
  end

  def ageYearText(age, week)
    if week < 52 
      if week == 1
        return week.to_s + ' week old'
      else
        return week.to_s + ' weeks old' 
      end
    elsif age == 1
      return age.to_s + ' year old'
    else
      return age.to_s + ' years old'
    end
  end
end

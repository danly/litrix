module MainHelper

  def uniqWeeks(milestones)
    arr = []
    milestones.length.times do |index|
      arr.push(milestones[index].week)
    end
    arr.sort!.uniq!
    return arr
  end


  def guestAgeToDate(age)
    now = DateTime.now.utc.to_date
    birthyear = now.year - age

    birthdate = DateTime.new(birthyear, now.month, now.day).to_date

    return birthdate
  end
  
end

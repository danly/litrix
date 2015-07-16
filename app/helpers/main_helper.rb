module MainHelper

  def uniqWeeks(milestones)
    arr = []
    milestones.length.times do |index|
      arr.push(milestones[index].week)
    end
    arr.sort!.uniq!
    return arr
  end
end

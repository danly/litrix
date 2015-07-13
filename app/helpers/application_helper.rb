module ApplicationHelper
  def current_age(birthday)
    now = Time.now.utc.to_date
    now.year - birthday.year - (birthday.to_date.change(:year => now.year) > now ? 1 : 0)
  end

  def current_weeks(birthday)
    daysAlive = (DateTime.now.utc.to_date - birthday).to_i
    weeks = daysAlive/7
  end


end

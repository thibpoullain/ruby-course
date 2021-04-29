Time.now.utc    # 2020-12-13 03:17:05 UTC
Time.now.to_i   # Timestamp 1607829496

christmas = Time.new(2020, 12, 25)  #
puts christmas.wday # return 5 (Thursday)

now = Time.now  # current time: 2020-12-13 03:08:15 +0000
now.year    # 2020
now.month   # 12
now.day     # 13
now.hour    # 3
now.min     # 8
now.sec     # 15
now.sunday? # true

past = Time.now - 20  # return current time minus 20 seconds
past_day = Time.now - 86400 # 60 secs * 60 mins * 24 hours
past_day = Time.now - 1.day # work only in Rail

#Format Time
# %d    Day of the month (01..31)
# %m    Month of the year (01..12) Use %-m for (1..12)
# %k    Hour (0..23)
# %M    Minutes
# %S    Seconds (00..60)
# %I    Hour (1..12)
# %p    AM/PM
# %Y    Year
# %A    Day of the week (name)
# %B    Month (name)

time = Time.new
time.strftime("%d of %B, %Y")    # "25 of December, 2020"

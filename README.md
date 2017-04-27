# Conference Track Management

You are planning a big programming conference and have received many proposals which have passed the initial screen process but you're having trouble fitting them into the time constraints of the day -- there are so many possibilities! So you write a program to do it for you.

The conference has multiple tracks each of which has a morning and afternoon session.
Each session contains multiple talks.
Morning sessions begin at 9am and must finish by 12 noon, for lunch.
Afternoon sessions begin at 1pm and must finish in time for the networking event.
The networking event can start no earlier than 4:00 and no later than 5:00.
No talk title has numbers in it.
All talk lengths are either in minutes (not hours) or lightning (5 minutes).
Presenters will be very punctual; there needs to be no gap between sessions.
Note that depending on how you choose to complete this problem, your solution may give a different ordering or combination of talks into tracks. This is acceptable; you don’t need to exactly duplicate the sample output given here.

Test input:

Writing Fast Tests Against Enterprise Rails 60min\n
Overdoing it in Python 45min\n
Lua for the Masses 30min\n
Ruby Errors from Mismatched Gem Versions 45min\n
Common Ruby Errors 45min\n
Rails for Python Developers lightning\n
Communicating Over Distance 60min\n
Accounting-Driven Development 45min\n
Woah 30min\n
Sit Down and Write 30min\n
Pair Programming vs Noise 45min\n
Rails Magic 60min\n
Ruby on Rails: Why We Should Move On 60min\n
Clojure Ate Scala (on my project) 45min\n
Programming in the Boondocks of Seattle 30min\n
Ruby vs. Clojure for Back-End Development 30min\n
Ruby on Rails Legacy App Maintenance 60min\n
A World Without HackerNews 30min\n
User Interface CSS in Rails Apps 30min\nz

Test Output

Track 1

09:00AM Writing Fast Tests Against Enterprise Rails 60min\n
10:00AM Overdoing it in Python 45min\n
10:45AM Lua for the Masses 30min\n
11:15AM Ruby Errors from Mismatched Gem Versions 45min\n
12:00PM Lunch\n
01:00PM Ruby on Rails: Why We Should Move On 60min\n
02:00PM Common Ruby Errors 45min\n
02:45PM Pair Programming vs Noise 45min\n
03:30PM Programming in the Boondocks of Seattle 30min\n
04:00PM Ruby vs. Clojure for Back-End Development 30min\n
04:30PM User Interface CSS in Rails Apps 30min\n
05:00PM Networking Event\n
Track 2\n

09:00AM Communicating Over Distance 60min\n
10:00AM Rails Magic 60min\n
11:00AM Woah 30min\n
11:30AM Sit Down and Write 30min\n
12:00PM Lunch\n
01:00PM Accounting-Driven Development 45min\n
01:45PM Clojure Ate Scala (on my project) 45min\n
02:30PM A World Without HackerNews 30min\n
03:00PM Ruby on Rails Legacy App Maintenance 60min\n
04:00PM Rails for Python Developers lightning\n
05:00PM Networking Event\n

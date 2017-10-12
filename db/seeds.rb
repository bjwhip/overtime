AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 6.days))
AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 13.days))
AuditLog.create!(user_id: User.last.id, status: 0, start_date: (Date.today - 20.days))

@admin = AdminUser.create(email: "admin@test.com",
                  password: "asdfasdf",
                  password_confirmation: "asdfasdf",
                  first_name: "Admin",
                  last_name: "Name",
                  phone: "4322386131")

puts "1 Admin User created"

@user = User.create(email: "test@test.com",
                    password: "asdfasdf",
                    password_confirmation: "asdfasdf",
                    first_name: "Jon",
                    last_name: "Snow",
                    phone: "4322386131")

puts "1 User created"


100.times do |post|
  Post.create!(date: Date.today, rationale: "#{post} No, no, George, look, it's just an act, right? Okay, so 9:00 you're strolling through the parking lot, you see us struggling in the car, you walk up, you open the door and you say, your line, George. Oh. I hope you don't mind but George asked if he could take me home. The future, it's where you're going? One point twenty-one gigawatts. One point twenty-one gigawatts. Great Scott.

Uh no, not hard at all. So anyway, George, now Lorraine, she really likes you. She told me to tell you that she wants you to ask her to the Enchantment Under The Sea Dance. Mother, with Marty's parents out of town, don't you think he oughta spend the night, after all, Dad almost killed him with the car. What did I just say? Yeah, alright, bye-bye. What? My god, they found me. I don't know how but they found me. Run for it, Marty. My god, they found me. I don't know how but they found me. Run for it, Marty.

yes, Joey just loves being in his playpen. he cries whenever we take him out so we just leave him in there all the time. Well Marty, I hope you like meatloaf. Where the hell are they. Dammit, Doc, why did you have to tear up that letter? If only I had more time. Wait a minute, I got all the time I want I got a time machine, I'll just go back and warn him. 10 minutes oughta do it. Time-circuits on, flux-capacitor fluxing, engine running, alright. No, no no no no, c'mon c'mon. C'mon c'mon, here we go, this time. Please, please, c'mon. He's fine, and he's completely unaware that anything happened. As far as he's concerned the trip was instantaneous. That's why Einstein's watch is exactly one minute behind mine. He skipped over that minute to instantly arrive at this moment in time. Come here, I'll show you how it works. First, you turn the time circuits on. This readout tell you where you're going, this one tells you where you are, this one tells you where you were. You imput the destination time on this keypad. Say, you wanna see the signing of the declaration of independence, or witness the birth or Christ. Here's a red-letter date in the history of science, November 5, 1955. Yes, of course, November 5, 1955. Great Scott. Let me see that photograph again of your brother. Just as I thought, this proves my theory, look at your brother.

Well, uh, listen, uh, I really- Is she pretty? What's that thing he's on? I don't wanna see you in here again. Get your meat hooks off of me.

No, get out of town, my mom thinks I'm going camping with the guys. Well, Jennifer, my mother would freak out if she knew I was going up there with you. And I get this standard lecture about how she never did that kind of stuff when she was a kid. Now look, I think she was born a nun. Well, Marty, I'm almost eighteen-years-old, it's not like I've never parked before. Listen, woh. Hello, uh excuse me. Sorry about your barn. Who are you? Dammit, Doc, why did you have to tear up that letter? If only I had more time. Wait a minute, I got all the time I want I got a time machine, I'll just go back and warn him. 10 minutes oughta do it. Time-circuits on, flux-capacitor fluxing, engine running, alright. No, no no no no, c'mon c'mon. C'mon c'mon, here we go, this time. Please, please, c'mon.

Good. Have a good trip Einstein, watch your head. Good evening, I'm Doctor Emmet Brown, I'm standing here on the parking lot of- No. Go. C'mon, c'mon let's go.", user_id: @user.id, overtime_request: 2.5)
end

puts "100 Posts have been created"


puts "3 audit logs have been created"

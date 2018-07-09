#View Personality Data.
setwd("~/Documents/Research Projects/Personality/Dissertation/Data")
data <- read.csv("/Users/ccasti02/Documents/Research Projects/Personality/Dissertation/Data/Raw Personality Data.csv")
View(data)

#Items.
#	OPEN_1	I absolutely hate trying new things.
#	OPEN_3	I have no desire to visit new places.
#	OPEN_4	People have told me I am emotionally inept.
#	OPEN_5	I am unable to reciprocate when someone talks about their feelings.
#	OPEN_6	I find theoretical conversations extremely boring.
#	OPEN_7	I like to think about simple things.
#	OPEN_8	I never daydream.
#	OPEN_9	I never get lost in my thoughts.
#	OPEN_10	I always vote for the most conservative-minded politicians.
#	OPEN_11	I find all artwork to be similar.
#	OPEN_12	Listening to poetry or music seems to be a waste of time.
#	OPEN_13	The justice system should punish criminals even more harshly.
#	OPEN_14	Trying new things usually makes me very uncomfortable.
#	OPEN_15	It takes me a long time to understand other peoples emotions.
#	OPEN_16	I dislike focusing on difficult problems.
#	OPEN_17	I dislike thinking too hard about things.
#	OPEN_18	Most criminals are beyond hope for reform and should be kept away from the rest of society.
#	OPEN_19	I prefer stability or consistency to variety and change.
#	OPEN_20	I find poetry difficult to understand.
#	OPEN_21	While listening to music is nice, it is pointless.
#	OPEN_22	Unless someone tells me how they feel I won't know for sure.
#	OPEN_23	Seeing is believing.
#	OPEN_24	I like to think about real-world problems.
#	OPEN_25	I generally trust the U.S. government to act in the people?s best interest.
#	OPEN_26	I sometimes can tell how people feel.
#	OPEN_27	If an emotion is really obvious then I can probably identify it.
#	OPEN_28	I like change, but I also need stability.
#	OPEN_29	While I do somewhat prefer variety, I also enjoy stability or consistency.
#	OPEN_30	From time to time I like to appreciate the beauty around me.
#	OPEN_31	Sometimes I have difficulty imagining things, but other times I can build mental images.
#	OPEN_32	Half of the time I like to daydream, and half of the time I prefer to live in reality.
#	OPEN_33	There have been times when a song has made me emotional.
#	OPEN_34	I prefer to focus on mentally stimulating projects, but sometimes it is nice to have time to mentally relax.
#	OPEN_35	Sometimes I enjoy solving complex problems.
#	OPEN_36	I do not necessarily trust the U.S. government to act in the people?s best interest.
#	OPEN_37	The line between right and wrong can be unclear at times.
#	OPEN_38	I see some value in art and beauty.
#	OPEN_39	The U.S. criminal system should do more to rehabilitate criminals.
#	OPEN_40	I try new things more than most people.
#	OPEN_41	I welcome change.
#	OPEN_42	I like reading poetry.
#	OPEN_43	For the most part I understand others emotions.
#	OPEN_44	I enjoy solving complex problems.
#	OPEN_45	I enjoy having abstract or philosophical conversations.
#	OPEN_46	I spend most of my days daydreaming.
#	OPEN_47	I tend to vote for the most liberal-minded politicians.
#	OPEN_48	People talk to me, because I can empathize with how they feel.
#	OPEN_49	I sometimes like to pretend that I am a superhero.
#	OPEN_50	I am always willing to deviate from an activity if something different comes up.
#	OPEN_51	Compared to most people, I prefer an extremely high variety of activities.
#	OPEN_52	Art is the greatest form of expression of all.
#	OPEN_53	When I see a piece of art  I find it necessary to stop and take it in.
#	OPEN_54	I have a deep understanding of others emotions.
#	OPEN_55	Any person I meet I can immediately empathize with.
#	OPEN_56	If someone asked me what my interests are, I wouldn?t even know where to start (I have so many).
#	OPEN_57	I really enjoy trying to tackle the most complex problems imaginable.
#	OPEN_58	I constantly make up stories in my head.
#	OPEN_59	I find it extremely difficult to tell fantasy from reality apart.
#	OPEN_60	I always feel the need to challenge authority figures.
#	OPEN_61	I always act on the belief that there is no absolute right or wrong way.
#	NEUR_1	I never worry about anything.
#	NEUR_2	People say I have great "self-control."
#	NEUR_3	I never follow my urges.
#	NEUR_4	I never care about how other people see me.
#	NEUR_5	I am comfortable being myself in any setting.
#	NEUR_6	Nothing intimidates me.
#	NEUR_7	I always keep my emotions under control.
#	NEUR_8	I love who I am.
#	NEUR_9	I always feel great about the person that I am.
#	NEUR_10	I can adapt to any new situation.
#	NEUR_11	I hate any kind of violent and hostile behavior.
#	NEUR_12	I am rarely frustrated by anything.
#	NEUR_13	I rarely get stressed out about things.
#	NEUR_14	I rarely become embarrassed.
#	NEUR_15	I rarely panic.
#	NEUR_16	I like to consider myself as a very easygoing person.
#	NEUR_17	I rarely get irritated by others.
#	NEUR_18	I am relaxed most of the time.
#	NEUR_19	I feel comfortable in my own skin.
#	NEUR_20	I usually remain calm under pressure.
#	NEUR_21	I am comfortable with who I am.
#	NEUR_22	I seldom feel down in the dumps.
#	NEUR_23	I have a good amount of control on my cravings.
#	NEUR_24	I often resist my temptations.
#	NEUR_25	I indulge reasonably when I feel inclined to do so.
#	NEUR_26	Occasionally I panic, but I usually do not.
#	NEUR_27	On occasion, I feel blue, but most of the time I don't feel blue.
#	NEUR_28	I am rather balanced in my experience of anxiety and calmness.
#	NEUR_29	Sometimes I get caught up in my problems, and other times I try not to worry about things that have already happened.
#	NEUR_30	Half of the time I give in to my urges and half of the time I control myself.
#	NEUR_31	Sometimes I panic easily, and other times I do not.
#	NEUR_32	I am somewhat balanced in my experience of anger.
#	NEUR_33	I am somewhat balanced in my experience of frustration.
#	NEUR_34	My mood changes about half the time.
#	NEUR_35	On occasions, I can be quite bashful.
#	NEUR_36	Sometimes I get a little uncomfortable in unfamiliar social situations.
#	NEUR_37	Sometimes I do things I later regret.
#	NEUR_38	I get stressed out about things.
#	NEUR_39	I find it difficult to approach others.
#	NEUR_40	I get embarrassed easily.
#	NEUR_41	I am uncomfortable in unfamiliar situations.
#	NEUR_42	My emotions usually get the best of me.
#	NEUR_43	I get angry easily.
#	NEUR_44	I get frustrated easily.
#	NEUR_45	I often feel blue.
#	NEUR_46	I have a low opinion of myself.
#	NEUR_47	I get caught up in my problems.
#	NEUR_48	I believe that giving into our urges is what makes life fun.
#	NEUR_49	I am always on the lookout for threatening situations.
#	NEUR_50	I feel most alive when I give into my urges.
#	NEUR_51	I am easily intimidated by others.
#	NEUR_52	I have a very short temper.
#	NEUR_53	I have no problem getting violent with others.
#	NEUR_54	I always worry about my health.
#	NEUR_55	I very frequently experience cravings that I feel strongly compelled to act on.
#	NEUR_56	I am always extremely afraid that I will do the wrong thing.
#	NEUR_57	I am always extremely afraid that I will draw attention to myself.
#	NEUR_58	I can panic extremely easily.
#	NEUR_59	I have an extremely low opinion of myself.
#	NEUR_60	My mood changes all the time.
#	EXTR_1	I always take my time - even when a faster pace may be needed.
#	EXTR_2	I would never go bungee jumping even if you paid me.
#	EXTR_3	I would never try any type of drug.
#	EXTR_4	I am a socially awkward person.
#	EXTR_5	I am undeserving of happiness in my life.
#	EXTR_6	I am incredibly uptight around others.
#	EXTR_7	I hate leading groups.
#	EXTR_8	I like to take it easy.
#	EXTR_9	I love the silence that comes when people aren't around.
#	EXTR_10	Spending time with people who joke around irritates me.
#	EXTR_11	I always hide my true feelings from people.
#	EXTR_12	I have no interest in leadership.
#	EXTR_13	I prefer a slow lifestyle.
#	EXTR_14	My friends often tell me that I am too boring and that I need to learn to have fun.
#	EXTR_15	People often refer to me as a ?downer."
#	EXTR_16	I usually find it hard to make friends.
#	EXTR_17	I generally prefer activities that require little energy.
#	EXTR_18	If a party is too loud, I will probably leave.
#	EXTR_19	I enjoy being alone.
#	EXTR_20	Some say I have a pessimistic outlook on life but I call it ?realistic.?
#	EXTR_21	I am usually quiet when I meet new people.
#	EXTR_22	I would rather follow directions than lead.
#	EXTR_23	I often keep my opinions to myself in order to avoid a confrontation.
#	EXTR_24	I sometimes feel uncomfortable when surrounded by a big crowd.
#	EXTR_25	I don?t mind loud parties, but I don?t prefer them either.
#	EXTR_26	I might try bungee jumping, but it would have to be under extreme amounts of peer pressure.
#	EXTR_27	I prefer to socialize in small groups.
#	EXTR_28	Half of the time I prefer leisurely activities and half of the time I prefer activities to be fast-paced.
#	EXTR_29	Depending on the situation, I sometimes enjoy the company of others and sometimes prefer to be alone.
#	EXTR_30	There are some topics I am optimistic about and others I am pessimistic about.
#	EXTR_31	I can be both formal and informal.
#	EXTR_32	When I am in a bad mood, I can sometimes be pretty unfriendly.
#	EXTR_33	From time to time, I enjoy taking charge on projects, but some other times I prefer others to take the lead.
#	EXTR_34	Compared to extremely energetic people, I am somewhat less energetic.
#	EXTR_35	People who joke around a lot can be enjoyable, but too much of them annoys me.
#	EXTR_36	I will say my opinions if I feel strongly about them.
#	EXTR_37	I am somewhat of a fun person to be around.
#	EXTR_38	I tend to seek adventure.
#	EXTR_39	Loud parties can definitely be fun.
#	EXTR_40	I enjoy meeting different people.
#	EXTR_41	I like to focus on the positive side of things.
#	EXTR_42	I usually find it easy to make friends.
#	EXTR_43	I am often the person to take charge of a group.
#	EXTR_44	I enjoy taking the lead on new projects.
#	EXTR_45	My fast-paced lifestyle keeps me more busy than most.
#	EXTR_46	My lifestyle requires a high energy level.
#	EXTR_47	I like to do most things in large groups.
#	EXTR_48	I always try to live life to the fullest extent that I possibly can.
#	EXTR_49	I really enjoy spending time with large groups of people.
#	EXTR_50	I tend to show a lot of affection.
#	EXTR_51	I can always persuade people to follow my lead.
#	EXTR_52	Compared to most people, I live a very fast-paced life.
#	EXTR_53	I couldn?t live without adventure.
#	EXTR_54	I think I would enjoy being part of a high-speed car chase.
#	EXTR_55	Being a people person is embedded in my DNA.
#	EXTR_56	I constantly try to engage with different people.
#	EXTR_57	I always look at the bright side of life.
#	EXTR_58	I am an incredibly joyful person to be around.
#	EXTR_59	I am always friendly to people.
#	EXTR_60	I always end up leading the groups I participate in.
#	CONS_1	I hate setting high or lofty goals.
#	CONS_3	Logic holds people back, I prefer to make spontaneous decisions.
#	CONS_4	I always say what is on my mind regardless of the consequences.
#	CONS_5	Telling the truth is entirely irrelevant unless it fits in with accomplishing my goals.
#	CONS_6	Cheating is the only way to get a head in life.
#	CONS_7	I have been told that I am an extremely messy person.
#	CONS_8	I never finish anything I start.
#	CONS_9	My work is always late.
#	CONS_10	I avoid situations where I have to work hard.
#	CONS_11	I am a reckless driver.
#	CONS_12	I find that most all of my decisions are impulsive.
#	CONS_13	I love the messy comfort of my room.
#	CONS_14	I avoid setting goals, but when I do, I set extremely easy goals.
#	CONS_15	I put little thought into my actions.
#	CONS_16	I have a tendency to misjudge situations.
#	CONS_17	I avoid considering all options when making a decision.
#	CONS_18	On average, I waste a significant amount of time that I could be spending on something productive.
#	CONS_19	Hard work is something I seldom enjoy.
#	CONS_20	I like to go with my gut for most decisions.
#	CONS_21	I find that bending the rules, although not desirable, is often necessary in order for me to be successful.
#	CONS_22	I have difficulties working on a clean and organized desk.
#	CONS_23	Organization is not a priority for me.
#	CONS_24	I have lied to protect other people.
#	CONS_25	Although I am capable of motivating myself to complete tasks, I prefer to have someone else prompting me.
#	CONS_26	I have given up on projects before.
#	CONS_27	While I often seek to meet high goals, I am usually satisfied by just meeting a minimally acceptable standard.
#	CONS_28	I am fine being an average worker.
#	CONS_29	I tend to perform in most areas at the average level of other people.
#	CONS_30	While I often excel in what I do, I also have much to learn to be better.
#	CONS_31	I sometimes make decisions based on instinct rather than facts; and sometimes I prefer facts.
#	CONS_32	I understand the importance of promises, but I unfortunately have trouble keeping them sometimes.
#	CONS_33	While I like order and regularity, I also enjoy when things are a bit chaotic.
#	CONS_34	On occasion it can be helpful to consider all options when making decisions.
#	CONS_35	I aim to tell the truth as often as possible, but I can think of numerous situations that have required me to bend the truth.
#	CONS_36	I keep my workstation somewhat clean and tidy.
#	CONS_37	I try to motivate myself to finish all of my tasks, but sometimes I lose interest and do not complete them.
#	CONS_38	I have a drive to succeed in my work.
#	CONS_39	I tend to be quick to understand complex information presented to me.
#	CONS_40	Most of the time I judge situations correctly, but every once in a while, I do misjudge certain situations.
#	CONS_41	I try to keep all of the promises I make, but sometimes I am unable to deliver on them.
#	CONS_42	I believe that telling the truth is often the best way to go.
#	CONS_43	I like to plan my days in advanced.
#	CONS_44	I prefer to be around tidy people.
#	CONS_45	I aspire to do well in more areas compared to most people.
#	CONS_46	I prefer to have backup plans.
#	CONS_47	It is best to be careful when a decision has significant consequences.
#	CONS_48	More often than not, I depend on myself rather than others for the motivation needed to successfully complete a task.
#	CONS_49	Even when tasks are difficult, I find a way to complete them.
#	CONS_50	I avoid jumping to conclusions before I know the facts.
#	CONS_51	I almost always plan out my daily activities.
#	CONS_52	I find great comfort in order.
#	CONS_53	I love setting ridiculously high goals and seeing if I can meet them.
#	CONS_54	I work extremely hard to be the very best at everything I do.
#	CONS_55	I always think carefully before acting.
#	CONS_56	I pride myself on my unwavering ability to act responsibly.
#	CONS_57	I hate taking risks.
#	CONS_58	Regardless of the outcome, bending the rules is never acceptable.
#	CONS_59	Regardless of the situation, I always tell the truth.
#	CONS_60	I always get my work in on time.
#	CONS_61	When it comes to carrying out my obligations, I will not stop until they are complete.
#	AGREE_1	I am extremely self-centered.
#	AGREE_3	I never do anything just out of the goodness of my heart.
#	AGREE_4	I always get what I want even if it means fighting for it.
#	AGREE_5	When I do something well I always seek recognition.
#	AGREE_6	I feel that people are always out to get me.
#	AGREE_7	I refuse to give people who are less fortunate than me any special considerations.
#	AGREE_8	Sympathy is a sign of weakness that I never display.
#	AGREE_9	I always hide my motives to get what I want.
#	AGREE_10	I love to manipulate people into doing whatever I want them to do.
#	AGREE_11	I am not afraid to cause a commotion to get my way.
#	AGREE_12	I have a high opinion of myself.
#	AGREE_13	Everyone has hidden intentions.
#	AGREE_14	Only losers need help.
#	AGREE_15	I often stick to my principles even if it prevents me from being cooperative.
#	AGREE_16	If someone wrongs me, it is difficult for me to forgive them.
#	AGREE_17	There are some evil people in the world.
#	AGREE_18	I have been told that I lack consideration for others.
#	AGREE_19	I consider myself an above-average person.
#	AGREE_20	I sometimes think it?s a struggle to find true and genuine friends.
#	AGREE_21	I tend to think of homeless people as being responsible for their actions, rather than victims of circumstance.
#	AGREE_22	Being a winner is much more important than being cooperative.
#	AGREE_23	Manipulating others can be helpful.
#	AGREE_24	If given a choice, I prefer to receive recognition for giving money to a charity.
#	AGREE_25	I use flattery on occasion when dealing with others.
#	AGREE_26	On occasion people will have hidden intentions.
#	AGREE_27	From time to time I like to give to charitable organizations.
#	AGREE_28	I sometimes help a friend because it?s the right thing to do, other times is because I want something in return.
#	AGREE_29	Sometimes I am easy to satisfy, but other times I can seem a bit pushy.
#	AGREE_30	While I sometimes forgive others to avoid confrontation, I also often challenge others.
#	AGREE_31	I shy away from credit sometimes, but other times it is nice to be recognized.
#	AGREE_32	Sometimes the work I do is really excellent, other times it is mediocre.
#	AGREE_33	I find it easier to trust in some people than in others.
#	AGREE_34	Cooperating with others is equally as important as winning.
#	AGREE_35	There is an appropriate time and place for sympathy.
#	AGREE_36	I frequently think about how others are doing.
#	AGREE_37	I worry about how people are doing.
#	AGREE_38	People who know me would likely say I am generally a forgiving person.
#	AGREE_39	When I give money to a charity, I am fine with being anonymous.
#	AGREE_40	Honesty is the foundation of any good relationship.
#	AGREE_41	I feel the urge to confide in others.
#	AGREE_42	When someone is in need I feel as though I have to help.
#	AGREE_43	It is unusual for me to use flattery to get ahead in life.
#	AGREE_44	I tend to stick to the rules when trying to get my way with others.
#	AGREE_45	I mean what I say.
#	AGREE_46	I usually try to satisfy others? needs, rather than my own when I sense conflict emerging.
#	AGREE_47	I do not consider myself an above-average person
#	AGREE_48	Cooperating with others is more important than winning.
#	AGREE_49	I prefer to be around genuine people.
#	AGREE_50	Sometimes I think I am too nice for my own good.
#	AGREE_51	When I give money to a charity, I prefer to remain anonymous
#	AGREE_52	People often tell me that I am a genuine person.
#	AGREE_53	I live to serve others.
#	AGREE_54	My friends and family would probably describe me as an extremely calm and easy-going person.
#	AGREE_55	People who know me would say I am an extremely forgiving person.
#	AGREE_56	I always share the credit I receive on teamwork.
#	AGREE_57	I always see the good in people.
#	AGREE_58	People will always act honestly.
#	AGREE_59	I will do anything to cooperate with others.
#	AGREE_60	I always put the needs of others before my own.
#	AGREE_61	I am an extremely assertive person.
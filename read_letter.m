function letter=read_letter(imagn,num_letras)

global templates
comp=[ ];


 for n=1:num_letras
    
    sem=corr2(templates{1,n},imagn);
    comp=[comp sem];
    
    %pause(1)
end

vd=find(comp==max(comp));
%*-*-*-*-*-*-*-*-*-*-*-*-*-
if vd==1
    letter='Discomfort,stressed. ';
elseif vd==2
    letter='Frustrated. ';
elseif vd==3
    letter='Good comfort zone. ';
elseif vd==4
    letter='Relaxed,lethargic. ';
elseif vd==5
    letter='Emotional aspect to self satisfaction. ';
elseif vd==6
    letter='Emotional dissatisfaction. ';
elseif vd==7
    letter='Greedy with a sense of not being satisfied. ';
elseif vd==8
    letter='Not self satisfeid. ';
elseif vd==9
    letter='Practical aspect to self satissfaction. ';
elseif vd==10
    letter='Satissfied but still greedy. ';
elseif vd==11
    letter='Anxious in social environment. ';
elseif vd==12
    letter='Comfortable in social environment. ';
elseif vd==13
    letter='Lethargic response to social plans. ';
elseif vd==14
    letter='Overthinking about social environment. ';
elseif vd==15
    letter='Analytical about the food they eat. ';
elseif vd==16
    letter='Likes to stick to what they eat, does not like to experiment. ';
elseif vd==17
    letter='Openminded, would not mind to try out new cuisines of food. ';
elseif vd==18
    letter='Satissfied with the food they eat. ';
elseif vd==19
    letter='Able to maintain calm in toxic situations. ';
elseif vd==20
    letter='Argumentative about cultural aspects. ';
elseif vd==21
    letter='Conservative towards other cultures. ';
elseif vd==22
    letter='Dissatisfaction and irritation. ';
elseif vd==23
    letter='Feeling of trapped and frustration. ';
elseif vd==24
    letter='Not able to mix in with different cultures. ';
elseif vd==25
    letter='Considers past, present and future for a situation, is analytical. ';
elseif vd==26
    letter='Desires to think about the future tense nand then present tense. ';
    %*-*-*-*-*
elseif vd==27
    letter='Desires to think about present tense and then future tense. ';
elseif vd==28
    letter='Sacrifices analytical ability for confidence. ';
elseif vd==29
    letter='Does not delay his work. ';
elseif vd==30
    letter='follows with whats told to be done, nonew ideas of their own. ';
elseif vd==31
    letter='Friendly, courteous, takes more time to finsih their work. ';
elseif vd==32
    letter='Not good at completing their task. ';
elseif vd==33
    letter='Expects returns when sharing knowledge. ';
elseif vd==34
    letter='Practical knowledge. ';
elseif vd==35
    letter='Practical knowledge. ';
elseif vd==36
    letter='Courteous nature. ';
    %********
elseif vd==37
    letter='Creative, want something more. ';
elseif vd==38
    letter='Decent hand coordination. ';
elseif vd==39
    letter='Fine movement of hand. ';
elseif vd==40
    letter='Futuristic in their thoughts. ';
elseif vd==41
    letter='Good attitude because of the past. ';
elseif vd==42
    letter='Mindset of pure taking. ';
elseif vd==43
    letter='Does formality, sounds fake. ';
elseif vd==44
    letter='Giving and taking process is in harmony. ';
elseif vd==45
    letter='Rude, not polite in mannerism. ';
elseif vd==46
    letter='Takes but has a desire to give back. ';
elseif vd==47
    letter='Taking things for self while thinkong about others. ';
elseif vd==48
    letter='Able to express creativityin a correct manner. ';
elseif vd==49
    letter='Confused about how they should express their creativity. ';
elseif vd==50
    letter='Creativity is not understood correctly. ';
elseif vd==51
    letter='Desire to have static ornew energy. ';
elseif vd==52
    letter='Sacrficed untuitivity for experience. ';
elseif vd==53
    letter='Very persuasive and influential about the creativity that they are trying to express. ';
elseif vd==54
    letter='Able to think during activity, alert. ';
elseif vd==55
    letter='Creative, actions are fruitful. ';
elseif vd==56
    letter='Delay when thoughts need to be converted to actions, maybe creative. ';
elseif vd==57
    letter='Have a thouhgt process before performing an action. ';
elseif vd==58
    letter='They are going to brood about what they are going to do. ';
elseif vd==59
    letter='Confusion in developing a habit. ';
elseif vd==60
    letter='Extremely analytical on forming new habit, irritated if their habits dont form as planned. ';
elseif vd==61
    letter='Initially analytical, then relaxed. ';
elseif vd==62
    letter='Initially relaxed then become focussed. ';
elseif vd==63
    letter='Learning the habit as it is supposed to be done. ';
elseif vd==64
    letter='Manipulative, not speaking their thoughts, relaxed when supposed to focus and vice versa. ';
elseif vd==65
    letter='Relaxed, focussed. ';
elseif vd==66
    letter='Able to create some new creativity when doing something rarely. ';
elseif vd==67
    letter='Analytical when doing something new. ';
elseif vd==69
    letter='Confused when doing something new. ';
elseif vd==70
    letter='Fine with doing something new. ';
elseif vd==71
    letter='Willl follow the rules as it is when doing something new. ';
elseif vd==72
    letter='Argumentative or debative mindset with future related aspects. ';
elseif vd==73
    letter='Calm and focussed. ';
elseif vd==74
    letter='Complicated thought process, very low satisfaction level. ';
elseif vd==75
    letter='Does not sacrifice quality or satissfaction even though they are busy. ';
elseif vd==76
    letter='Lethargic. ';
elseif vd==77
    letter='Not calm, very hasty. ';
elseif vd==78
    letter='Not totally satisfied with what they have. ';
elseif vd==79
    letter='Received what they want, but wants more. ';
elseif vd==80
    letter='Satisfied with what they got. ';
elseif vd==81
    letter='Thought process even before performing action. ';
elseif vd==82
    letter='Body cannot cool down after physical exercise. ';
elseif vd==83
    letter='Body cannot relate tothe physical exercise in the beginning. ';
elseif vd==84
    letter='Body has overdone the internal processes. ';
elseif vd==85
    letter='Energy is more but is wasted. ';
elseif vd==86
    letter='Exercise is causing more stress than benefit. ';
elseif vd==87
    letter='Exercise is making body healthy. ';
elseif vd==88
    letter='Having mental ability while body is processing voluntary or involuntary physical activities. ';
elseif vd==89
    letter='Internal body organs are not responsive, lethargic. ';
elseif vd==90
    letter='Masks improvement in body. ';
elseif vd==91
    letter='Uses phsical strength and energy out of creativity. ';
elseif vd==91
    letter='Uses phsical strength and energy out of experience, internal physical strength is good. ';
elseif vd==92
    letter='Agitated, uses anger when not needed. ';
elseif vd==93
    letter='Instinctive nature is quick, feels offended. ';
elseif vd==94
    letter='Selfish and eqoistic. ';
elseif vd==95
    letter='Anger is overpowering creative enability. ';
elseif vd==96
    letter='Can express creativity without having stress. ';
elseif vd==97
    letter='Express creativity without stress. ';
elseif vd==98
    letter='Has a desire to have their creativity accepted in public. ';
elseif vd==99
    letter='Likes to express creativity, unique creativity. ';
elseif vd==100
    letter='Person is trained to think creatively. ';
    %********
elseif vd==101
    letter='Trouble expressing creativity, creativity out of experience. ';
elseif vd==102
    letter='Biased mindset, believes in prayers and goodluck charms. ';
elseif vd==103
    letter='Delays process of manifestation. ';
elseif vd==104
    letter='Enjoy things that require time and patience. ';
elseif vd==105
    letter='Greedy about receiving more, can bargain. ';
elseif vd==106
    letter='Has a thankful vibe when receing. ';
elseif vd==107
    letter='Intoxicant is present in their body. ';
elseif vd==108
    letter='Lost their patience. ';
elseif vd==109
    letter='Not able to move on after receiving. ';
elseif vd==110
    letter='Quickens process of manifestation. ';
elseif vd==111
    letter='Wanting to technically understand the process of receiving, may reduce enjoy time. ';
elseif vd==112
    letter='t1';
elseif vd==113
    letter='t2';
elseif vd==114
    letter='t3';
elseif vd==115
    letter='t4';
elseif vd==116
    letter='t5';
elseif vd==117
    letter='t6'
elseif vd==118
    letter='Being analytical while learning. ';
elseif vd==119
    letter='Follows gradual learning process. ';
elseif vd==120
    letter='Learned from experiences but not really uderstood its practicality. ';
elseif vd==121
    letter='Learning process is good but one is not confident enough, learning is underway. ';
elseif vd==122
    letter='Extreme quickness. ';
elseif vd==123
    letter='Over-relaxed. ';
elseif vd==124
    letter='Represents sudden change of thought. ';
elseif vd==125
    letter='Habit made with patience. ';
elseif vd==126
    letter='Having patience to learn an then being quick once its a habit. ';
elseif vd==127
    letter='Initially quick then has patience. ';
elseif vd==128
    letter='Initially relaxed then systematic in learning something new. ';
elseif vd==129
    letter='Initialy systematic then relaxed when learning something. ';
elseif vd==130
    letter='Lack of patience, is in a hurry to make the habit quickly. ';
elseif vd==131
    letter='Process of habit formation is confusing. ';
elseif vd==132
    letter='Extremely quick in analytics, quick thought process. ';
elseif vd==133
    letter='Person does not want to debate, but only understand. ';
elseif vd==134
    letter='Person has a dual argument even though only one is possible. ';
elseif vd==135
    letter='Receiving process is questioned. ';
elseif vd==136
    letter='Cannot handle money very well. ';
elseif vd==137
    letter='Careless about mone or physical energy. ';
elseif vd==138
    letter='Is not able manage their money. ';
elseif vd==139
    letter='Wants an actual flow in what they are doing, likes to do multiple social events together. ';
elseif vd==140
    letter='Wants to finish the target. ';
elseif vd==141
    letter='Gives physical efforts to understand the harmonies of nature. ';
else 
    letter='Trying to understand the manifestation. ';
end

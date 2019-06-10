%CREATE TEMPLATES
%Letter
clc;
close all;
A=rgb2gray(imread('letters_numbers\Discomfort,stressed.jpg'));B=rgb2gray(imread('letters_numbers\Frustrated.jpg'));
C=rgb2gray(imread('letters_numbers\Good comfort zone.jpg'));D=rgb2gray(imread('letters_numbers\Relaxed, lethargic.jpg'));
E=imread('letters_numbers\Emotional aspect to self satisfaction.jpg');F=imread('letters_numbers\Emotional dissatisfaction.jpg');
G=rgb2gray(imread('letters_numbers\Greedy with a sense of not being satisfied.jpg'));H=rgb2gray(imread('letters_numbers\Not selfsatisfied.jpg'));
I=rgb2gray(imread('letters_numbers\Practical aspect to self satisfaction.jpg'));J=rgb2gray(imread('letters_numbers\Satisfied but still greedy.jpg'));
K=rgb2gray(imread('letters_numbers\Anxious in social environment.jpg'));L=imread('letters_numbers\Comfortable in social environment.jpg');
M=rgb2gray(imread('letters_numbers\Lethargic response to social plans.jpg'));N=rgb2gray(imread('letters_numbers\Overthinking about social environment.jpg'));
O=rgb2gray(imread('letters_numbers\Analytical about the food they eat.jpg'));P=rgb2gray(imread('letters_numbers\Likes to stick to what thehy eat. does not like to experiment.jpg'));
Q=rgb2gray(imread('letters_numbers\Openminded, would not mind to try out new cuisines of food.jpg'));R=rgb2gray(imread('letters_numbers\Satisfied with the food they eat.jpg'));
S=imread('letters_numbers\Able to maintain calm in tugh situations .jpg');T=rgb2gray(imread('letters_numbers\Argumentative about cultural aspects.jpg'));
U=rgb2gray(imread('letters_numbers\Conservative towards other cultues.jpg'));V=imread('letters_numbers\Dissatisfaction and irritation.jpg');
W=rgb2gray(imread('letters_numbers\Feeling of trapped and frustration.jpg'));X=imread('letters_numbers\Not able to mix in with different cultures.jpg');
Y=rgb2gray(imread('letters_numbers\Considers past, present and future for a situation, is analytical.jpg'));Z=rgb2gray(imread('letters_numbers\Desire to think about future tense and then present tense.jpg.jpg'));

a=rgb2gray(imread('letters_numbers\Desire to think about present tense and then future tense.jpg'));b=rgb2gray(imread('letters_numbers\Sacrifices analytical ability for confidence .jpg'));
c=rgb2gray(imread('letters_numbers\Does not delay his work.jpg'));d=rgb2gray(imread('letters_numbers\follows with whats told to be done, nonew ideas of their own.jpg'));
e=rgb2gray(imread('letters_numbers\Friendly, courteous, takes more time to finish their work.jpg'));f=rgb2gray(imread('letters_numbers\Not good at completing their tasks.jpg'));
g=imread('letters_numbers\Ready to finish deals as soon as possible, no obligations.jpg');h=imread('letters_numbers\Creative.jpg');
i=rgb2gray(imread('letters_numbers\Expects returns when sharing knowledge.jpg'));j=imread('letters_numbers\Practical knowledge.jpg');
k=imread('letters_numbers\Theoretical knowledge.jpg');l=imread('letters_numbers\Courteous nature.jpg');
m=imread('letters_numbers\Creative, want something more.jpg');n=rgb2gray(imread('letters_numbers\Decent hand coordination.jpg'));
o=imread('letters_numbers\Fine movement of hand.jpg');p=rgb2gray(imread('letters_numbers\Futuristic in their thoughts.jpg'));
q=rgb2gray(imread('letters_numbers\Good attitude because of the past.jpg'));r=imread('letters_numbers\Mindset of pure taking.jpg');
s=rgb2gray(imread('letters_numbers\Does formality, sounds fake.jpg'));t=rgb2gray(imread('letters_numbers\Giving and taking process is in harmony.jpg'));
u=imread('letters_numbers\Rude, not polite in mannerisms.jpg');v=imread('letters_numbers\Takes but has a desire to give back.jpg');
w=imread('letters_numbers\Taking things for their self while thinking about others.jpg');x=rgb2gray(imread('letters_numbers\Able to express creativity in a correct manner.jpg'));
y=rgb2gray(imread('letters_numbers\Confused about how they should express their creativity.jpg'));z=rgb2gray(imread('letters_numbers\Creativity is not understood correctly.jpg'));

a1=rgb2gray(imread('letters_numbers\Desire to have starting ornew energy.jpg'));b1=rgb2gray(imread('letters_numbers\Sacrificed untuitivity for experience.jpg'));
c1=rgb2gray(imread('letters_numbers\Very persuasive and influential about the creativity that they are trying to express.jpg'));d1=imread('letters_numbers\Able to think during activity, alert.jpg');
e1=rgb2gray(imread('letters_numbers\Creative, actions are fruitful.jpg'));f1=imread('letters_numbers\Delay when thoughts need to be converted into action, maybe creative.jpg');
g1=imread('letters_numbers\Have a thought process before performing an action.jpg');h1=imread('letters_numbers\They are going to brood about what they are going to do.jpg');
i1=imread('letters_numbers\Confusion in developing a habit.jpg');j1=imread('letters_numbers\Extremely analytical on forming new habits, irritated if their habits dont form as planned.jpg');
k1=imread('letters_numbers\Initially analytical, then relaxed.jpg');l1=imread('letters_numbers\Initially relaxed then become focussed.jpg');
m1=imread('letters_numbers\Learning the habit as it is supposed to be done.jpg');n1=rgb2gray(imread('letters_numbers\Manipulative, not speaking their thoughts, relaxed when supposed to focussed and vice versa.jpg'));
o1=imread('letters_numbers\Relaxed, focussed.jpg');p1=imread('letters_numbers\Able to create some new creativity when doing something rarely.jpg');
q1=imread('letters_numbers\Analytical when doing something new.jpg');r1=imread('letters_numbers\Confused when doing something new.jpg');
s1=imread('letters_numbers\Fine with doing something new.jpg');t1=imread('letters_numbers\Willl follow the rules as it is when doing something new.jpg');
u1=imread('letters_numbers\Argumentative or debative mindset with future related aspects.jpg');v1=imread('letters_numbers\Calm and focussed.jpg');
w1=imread('letters_numbers\Complicated thought process, very low satisfaction level.jpg');x1=imread('letters_numbers\Does not sacrifice quality or satissfaction even though they are busy.jpg');
y1=imread('letters_numbers\Lethargic.jpg');z1=imread('letters_numbers\Not calm, very hasty.jpg');

a2=imread('letters_numbers\Not totally satisfied with what theyhave.jpg');b2=imread('letters_numbers\Received what they want, but wants more.jpg');
c2=imread('letters_numbers\Satisfied with what they got.jpg');d2=imread('letters_numbers\Thought process even before performing action.jpg');
e2=imread('letters_numbers\Body cannot cool down after physical exercise.jpg');f2=imread('letters_numbers\Body cannot relate tothe physical exercise in the beginning.jpg');
g2=imread('letters_numbers\Body has overdone the internal processes.jpg');h2=imread('letters_numbers\Energy is more but is wasted.jpg');
i2=imread('letters_numbers\Exercise is causing more stress than benefit.jpg');j2=imread('letters_numbers\Exercise is making bidy healthy.jpg');
k2=imread('letters_numbers\Having mental ability while body is processing voluntary or involuntary physical activities.jpg');l2=rgb2gray(imread('letters_numbers\Internal body organs are not responsive, lethargic.jpg'));
m2=imread('letters_numbers\Masks improvement in body.jpg');n2=imread('letters_numbers\Uses phsical strength and energy out of creativity.jpg');
o2=imread('letters_numbers\Uses phsical strength and energy out of experience, internal physical strength is good.jpg');p2=imread('letters_numbers\Agitated, uses anger when not needed.jpg');
q2=imread('letters_numbers\Instinctive nature is quick, feels offended.jpg');r2=imread('letters_numbers\Selfish and eqoistic.jpg');
s2=rgb2gray(imread('letters_numbers\Anger is overpowering creative enability.jpg'));t2=rgb2gray(imread('letters_numbers\Can express creativity without having stress.jpg'));
u2=rgb2gray(imread('letters_numbers\Express creativity without stress.jpg'));v2=rgb2gray(imread('letters_numbers\Has a desire to have their creativity accepted in public.jpg'));
w2=rgb2gray(imread('letters_numbers\Likes to express creativity, unique creativity.jpg'));x2=rgb2gray(imread('letters_numbers\Person is trained to think creatively.jpg'));
y2=rgb2gray(imread('letters_numbers\Trouble expressing creativity, creativity out of experience.jpg'));z2=imread('letters_numbers\Biased mindset, believes in prayers and goodluck charms.jpg');

a3=imread('letters_numbers\Delays process of manifestation.jpg');b3=imread('letters_numbers\Enjoy things that require time and patience.jpg');
c3=imread('letters_numbers\Greedy about receiving more, can bargain .jpg');d3=imread('letters_numbers\Has a thankfull vibe when receing.jpg');
e3=imread('letters_numbers\Intoxicant is present in their body.jpg');f3=imread('letters_numbers\Lost their patience.jpg');
g3=imread('letters_numbers\Not able to move on after receiving.jpg');h3=imread('letters_numbers\Quickens process of manifestation.jpg');
i3=imread('letters_numbers\Wanting to technically understand the process of receiving, may reduce enjoy time.jpg');j3=imread('letters_numbers\t1.jpg');
k3=imread('letters_numbers\t2.jpg');l3=imread('letters_numbers\t3.jpg');
m3=imread('letters_numbers\t4.jpg');n3=imread('letters_numbers\t5.jpg');
o3=imread('letters_numbers\t6.jpg');p3=rgb2gray(imread('letters_numbers\Being analytical while learning.jpg'));
q3=imread('letters_numbers\Follows gradual learning process.jpg');r3=imread('letters_numbers\Learned from experiences but not really uderstood its practicality.jpg');
s3=imread('letters_numbers\Learning process is good but one is not confident enough, learning is underway.jpg');t3=imread('letters_numbers\Extreme quickness.jpg');
u3=rgb2gray(imread('letters_numbers\Over-relaxed.jpg'));v3=imread('letters_numbers\Represents sudden change of thought.jpg');
w3=imread('letters_numbers\Habit made with patience.jpg');x3=imread('letters_numbers\Having patience to learn an then being quick once its a habit.jpg');
y3=imread('letters_numbers\Initially quick then has patience.jpg');z3=imread('letters_numbers\Initially relaxed then systematic in learning something new.jpg');

a4=imread('letters_numbers\Initialy systematic then relaxed when learning something.jpg');b4=imread('letters_numbers\Lack of patience, is in a hurry to make the habit quickly.jpg');
c4=imread('letters_numbers\Process of habit formation is confusing.jpg');d4=imread('letters_numbers\Extremely quick in analytics, quick thought process.jpg');
e4=imread('letters_numbers\Person does not want to debate, but only understand.jpg');f4=imread('letters_numbers\Person has a dual argument even though only one is possible.jpg');
g4=imread('letters_numbers\Receiving process is questioned.jpg');h4=imread('letters_numbers\Cannot handle money very well.jpg');
i4=imread('letters_numbers\Careless about mone or physical energy.jpg');j4=imread('letters_numbers\Is not able manage their money.jpg');
k4=imread('letters_numbers\Wants an actual flow in what they are doing, likes to do multiple social events together.jpg');l4=imread('letters_numbers\Wants to finish the target.jpg');
m4=rgb2gray(imread('letters_numbers\Gives physical efforts to understand the harmonies of nature.jpg'));n4=imread('letters_numbers\Trying to understand the manifestation .jpg');
o4=imread('letters_numbers\Trying to understand the manifestation .jpg');

letter=[A B C D E F G H I J K L M...
    N O P Q R S T U V W X Y Z];
lowercase = [a b c d e f g h i j k ...
     l m n o p q r s t u v w x y z];
 lowercase1 = [a1 b1 c1 d1 e1 f1 g1 h1 i1 j1 k1 ...
     l1 m1 n1 o1 p1 q1 r1 s1 t1 u1 v1 w1 x1 y1 z1];
 lowercase2 = [a2 b2 c2 d2 e2 f2 g2 h2 i2 j2 k2 ...
     l2 m2 n2 o2 p2 q2 r2 s2 t2 u2 v2 w2 x2 y2 z2];
 lowercase3 = [a3 b3 c3 d3 e3 f3 g3 h3 i3 j3 k3 ...
     l3 m3 n3 o3 p3 q3 r3 s3 t3 u3 v3 w3 x3 y3 z3];
 lowercase4 = [a4 b4 c4 d4 e4 f4 g4 h4 i4 j4 k4 ...
     l4 m4 n4 o4];
character=[letter lowercase lowercase1 lowercase2 lowercase3 lowercase4];
templates=mat2cell(character,42,[24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24 24 24 24 ...
    24 24 24 24 24]);
save ('templates','templates')
clear all
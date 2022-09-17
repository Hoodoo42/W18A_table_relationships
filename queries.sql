INSERT INTO blogger (username, password, name, created_at, email) 
VALUES('The little Mermaid', 'Ocean123', 'Ariel', '1989-11-17', 'mermaid@email.com'), 
('Beauty', 'SmallTown123', 'Belle', '1991-09-29', 'rose@email.com' ), ('Crazy mouse lady', 'fairiesarereal123', 'Cinderella', '1950-03-04', 'glassslipper@email.com'),
('Dragon', 'pass', 'Raya', '2021-03-05', 'dragonsrule@email.com');

INSERT INTO blog_post (title, content, created_at, blogger_id) VALUES('I wanna be where the people are', 'Up where they walk, up where they run, up where they stay all day in the sun. Wandering free. Wish I could be part of that world', '2017-06-12', 1),
('He thinks he knows everything', 'uuggh I am 16. Yet he treats me like a child. I think I am just going to runaway. Its the most adult thing I could do.', '2020-03-14', 1),
('Nothing happens in this small town!', 'I want to explore the world! Everyone here just sings about their boring lives. I need some suggestions! Where should I go??', '2022-05-23', 2),
('Dragons!', 'If you dont have a dragon yet. You should seriously consider it. Stay tuned for my next seres of blogs. It is going to go through the nitty gritty of where to get dragons from, and how to care for them! Follow me for more!', '2021-04-17', 4),
('All work and no play makes Ella a doll princess.', 'For those that dont know I recently opened my own etsy shop and all I have barely had a chance to enjoy sewing, sewing, sewing all day long. I could use a good ball any day now!', '2021-08-03', 3),
('Inventing reality', 'if there is one thing being the daughter of an inventor has taught me is that, some problems have solutions that just dont exist yet. Sometimes you have invent your way out of being stuck.', '2019-11-10', 2),
('Dragons- Part one!', 'Ok everyone like I promised! Top 3 places to get your dragons from. First. Best place to go is to haagrids. Top notch supplier of dragons. Second. Hiccup. His location is a bit hard to get to, but well worth the selcetion. Third. Pete. Not a huge selcetion from Pete but its Quality over Quantity there.', '2021-04-30', 4),
('Had a ball', 'I cant be the only one who loses a shoe by the end of the night right? Anyways, I am not sure who thought glass would make a comfy material to dance in. This is why I started my own shop. To deliver what we actually want to wear out!', '2021-11-13', 3);

INSERT INTO blog_post_comment  (content, created_at, blogger_id, blog_post_id) 
VALUES('I will trade you girl! Its boring up here in the sun!', '2017-06-14', 2, 9), ('Come get a dragon. THAT is the most adult thing you could!', '2020-03-14', 4, 10), 
('I know a lady who can make that trade happen for us! Shes a bit odd but it will be worth it. Just dont tell my dad', '2022-05-23', 1, 11), 
('Can they sew?', '2021-04-26', 3, 12), ('Anything for fins?I have a concert coming up I need something fresh', '2021-08-17', 1, 13), ('I totally get that. Sometimes you really have to take it into your own hands!', '2019-11-12', 1, 14),
('Ok. I think I ll get one, as long as they get along with mice', '2021-05-10', 3, 15), ('Invite me next time! I could use some excitement', '2021-11-13', 2, 16);

-- didnt quite get it for the join

SELECT  bp.content, bp.title, b.username 
FROM blogger b INNER JOIN blog_post bp ON blogger.id = blog_post.blogger_id;

SELECT username, name, created_at FROM blogger WHERE created_at > '2020-01-01';

UPDATE blogger SET password = 'bad_password' WHERE password = 'pass';
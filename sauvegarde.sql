DROP DATABASE IF EXISTS asteriaQuizz;

CREATE DATABASE asteriaQuizz CHARACTER
SET
    utf8 COLLATE utf8_general_ci;

USE asteriaQuizz;

CREATE TABLE
    Quizz (
        id INT PRIMARY KEY AUTO_INCREMENT,
        quizz_name VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci
    );

CREATE TABLE
    Question (
        id INT PRIMARY KEY AUTO_INCREMENT,
        quizz_id INT,
        question_value VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            photo_question VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            photo_answer VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            answer_name VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            answer_explanation TEXT CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            FOREIGN KEY (quizz_id) REFERENCES Quizz (id)
    );

CREATE TABLE
    QuizOption (
        id INT PRIMARY KEY AUTO_INCREMENT,
        question_id INT,
        question_answer VARCHAR(255) CHARACTER
        SET
            utf8 COLLATE utf8_general_ci,
            is_correct BOOLEAN,
            FOREIGN KEY (question_id) REFERENCES Question (id)
    );

-- Pour le quizz "quizzSystemeSolaire01"
INSERT INTO
Quizz (quizz_name)
VALUES
(N'quizzSystemeSolaire01');

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
1,
N'La Lune est un satellite de la planète..',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677935/images-quizz/SystemeSolaireQuizz/lune_ujgnpx.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677937/images-quizz/SystemeSolaireQuizz/terre_3x_s5diuz.jpg',
N'Terre',
N'La Lune, aussi connue sous le nom de Terre I, est le seul satellite de la planète Terre.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(1, N'Jupiter', false),
(1, N'Terre', true),
(1, N'Mars', false),
(1, N'Ce n''est pas un satellite', false);

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
1,
N'Quel est le nom du premier satellite artificiel envoyé en orbite autour de la Terre ?',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-question-2_uhrx5b.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-answer-2_bfoi7z.jpg',
N'Spoutnik',
N'Le premier satellite artificiel, Spoutnik, a été envoyé par l''URSS en 1957. Apollo est le nom des vols habités américains, Ariane est le nom d''une série de fusées européennes et Mir était une station spatiale russe.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(2, N'Apollo', false),
(2, N'Ariane', false),
(2, N'Mir', false),
(2, N'Spoutnik', true);

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
1,
N'Combien y a-t-il de planètes dans le système solaire ?',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-question-3_tfihlo.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-answer-3_uk0i4d.jpg',
N'8',
N'Depuis Août 2006, Pluton n''est plus considérée comme une planète, donc notre système solaire ne compte plus que 8 planètes.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(3, N'5', false),
(3, N'15', false),
(3, N'17', false),
(3, N'8', true);

-- Pour le quizz "quizzSystemeSolaire02"
INSERT INTO
Quizz (quizz_name)
VALUES
(N'quizzSystemeSolaire02');

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
2,
N'Quelles sont les deux grandes catégories de planètes ?',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-question-4_wdlmqw.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-answer-4_wdidp7.jpg',
N'Rocheuse et gazeuze',
N'Notre système solaire contient les deux types de planètes. Mercure, Vénus, la Terre et Mars sont des planètes rocheuses aussi appelées "planètes telluriques", alors que Jupiter, Saturne, Uranus et Neptune sont des planètes gazeuses.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(4, N'Solide et Liquide', false),
(4, N'Rocheuse et gazeuze', true),
(4, N'Tellurique et Rocheuse', false),
(4, N'Liquide et Gazeuze', false);

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
2,
N'Quelle est la plus grande planète du système solaire ?',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-question-5_zotron.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-answer-5_igxkw4.jpg',
N'Jupiter',
N'Jupiter est la plus grande planète du Système solaire. Elle est plus de onze fois plus grosse que la Terre.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(5, N'Jupiter', true),
(5, N'Mars', false),
(5, N'Vénus', false),
(5, N'Saturne', false);

INSERT INTO
Question (
quizz_id,
question_value,
photo_question,
photo_answer,
answer_name,
answer_explanation
)
VALUES
(
2,
N'En quelle année Pluton a-t-elle été reclassée en tant que planète naine ?',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-1-question-6_h73hc4.jpg',
N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-1-answer-6_sudkjm.jpg',
N'2006',
N'Pluton a été reclassée en tant que planète naine en 2006 lors de la réunion de l''Union Astronomique Internationale.'
);

INSERT INTO
QuizOption (question_id, question_answer, is_correct)
VALUES
(6, N'2006', true),
(6, N'2010', false),
(6, N'2008', false),
(6, N'2012', false);

-- Pour le quizz "quizzSystemeSolaire03"

INSERT INTO Quizz (quizz_name) VALUES (N'quizzSystemeSolaire03');

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (3, N'Combien de satellites naturels Jupiter possède-t-elle ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-1-question-7_ynrlrk.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677934/images-quizz/SystemeSolaireQuizz/quizz-1-answer-7_az89ln.jpg', N'79', N'On connaît 80 satellites naturels de Jupiter, dont 79 confirmés : 72 numérotés, et 57 nommés.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (7, N'1', false), (7, N'79', true), (7, N'2', false), (7, N'4', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (3, N'Combien de temps faut-il à la Terre pour effectuer un tour complet autour du Soleil ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-question-8_i27iwj.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-answer-8_sq5foj.jpg', N'365 jours', N'Un tour complet du circuit dure 365 jours 5 heures, 48 minutes et 45 secondes.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (8, N'120 jours', false), (8, N'48 heures', false), (8, N'365 jours', true), (8, N'2000 ans', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (3, N'Qui a marché le premier sur la Lune ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-question-9_aamgxk.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-answer-9_qv1ogm.jpg', N'Neil Armstrong', N'Le 16 juillet 1969, les trois astronautes américains de la mission Apollo 11, Neil Armstrong, Buzz Aldrin et Michael Collins, décollaient pour la Lune depuis la Floride, Neil Armstrong est le premier homme a avoir posé son pied sur la lune.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (9, N'Charlie Duke', false), (9, N'Buzz Aldrin', false), (9, N'Neil Armstrong', true), (9, N'François Hollande', false);

-- Pour le quizz "quizzSystemeSolaire04"

INSERT INTO Quizz (quizz_name) VALUES (N'quizzSystemeSolaire04');

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (4, N'Quelle est la plus grande planète du système solaire ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677937/images-quizz/SystemeSolaireQuizz/quizz-2-question-10_ffazwj.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-2-answer-10_fdbd4t.jpg', N'Jupiter', N'Jupiter est la plus grande planète du système solaire. Elle est composée principalement de gaz et est célèbre pour sa Grande Tache Rouge.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (10, N'Jupiter', true), (10, N'Neptune', false), (10, N'Uranus', false), (10, N'Terre', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (4, N'Quelle planète est surnommée "la planète rouge" ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-2-question-11_nuyujw.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-2-answer-11_b0ylua.jpg', N'Mars', N'Mars est surnommée "la planète rouge" en raison de sa couleur caractéristique due à l"oxyde de fer (rouille) présent à sa surface.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (11, N'Mars', true), (11, N'Venus', false), (11, N'Mercure', false), (11, N'Pluton', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (4, N'Quelle est la plus petite planète du système solaire ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-2-question-12_frdsvu.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677934/images-quizz/SystemeSolaireQuizz/quizz-2-answer-12_dewyu1.jpg', N'Mercure', N'Mercure est la plus petite planète du système solaire, elle est également la plus proche du Soleil.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (12, N'Mercure', true), (12, N'Pluton', false), (12, N'Mars', false), (12, N'Saturne', false);

-- Pour le quizz "quizzSystemeSolaire05"

INSERT INTO Quizz (quizz_name) VALUES (N'quizzSystemeSolaire05');

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (5, N'Quelle est la distance Terre-Soleil ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-1-question-13_wptczl.png', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677936/images-quizz/SystemeSolaireQuizz/quizz-1-answer-13_o4fimc.jpg', N'150 millions de km', N"L'unité astronomique (au) est l'unité de mesure correspondant à la distance moyenne qui sépare la Terre du Soleil, soit environ 150 millions de km (exactement 149 597 870,7 km).");

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (13, N'1 année lumière', false), (13, N'150 millions de km', true), (13, N'300 millions de km', false), (13, N'5 années lumières', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (5, N'Combien y a-t-il de planètes telluriques dans le système solaire ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677934/images-quizz/SystemeSolaireQuizz/quizz-1-question-14_i8atrs.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677935/images-quizz/SystemeSolaireQuizz/quizz-1-answer-14_qg9mjl.jpg', N'4', N'Les planètes telluriques sont rocheuses et riches en éléments chimiques divers et variés. Elles ont une surface solide sur laquelle nous pouvons marcher. Dans notre système planétaire, ce sont les planètes les plus proches du Soleil.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (14, N'4', true), (14, N'5', false), (14, N'6', false), (14, N'7', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (5, N'Combien y a-t-il de planètes gazeuses dans le système solaire?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677934/images-quizz/SystemeSolaireQuizz/quizz-1-question-15_l6qt7h.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677935/images-quizz/SystemeSolaireQuizz/quizz-1-answer-15_phmszs.jpg', N'4', N"Il s'agit de Jupiter, Saturne, Uranus, et Neptune. Les planètes gazeuses sont principalement composées d'hydrogène et d'hélium et ont généralement une faible densité, une rotation rapide, des atmosphères épaisses, des anneaux et beaucoup de satellites.");

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (15, N'2', false), (15, N'4', true), (15, N'6', false), (15, N'8', false);

-- Pour le quizz "quizzGalaxies01"

INSERT INTO Quizz (quizz_name) VALUES (N'quizzGalaxies01');

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (6, N'La Lune est un satellite de la planète...', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677935/images-quizz/SystemeSolaireQuizz/lune_ujgnpx.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677937/images-quizz/SystemeSolaireQuizz/terre_3x_s5diuz.jpg', N'Terre', N'La Lune, aussi connue sous le nom de Terre I, est le seul satellite de la planète Terre.');

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (16, N'Jupiter', false), (16, N'Terre', true), (16, N'Mars', false), (16, N'Ce n''est pas un satellite', false);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (6, N'Quel est le nom du premier satellite artificiel envoyé en orbite autour de la Terre ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-question-2_uhrx5b.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-answer-2_bfoi7z.jpg', N'Spoutnik', N"Le premier satellite artificiel, Spoutnik, a été envoyé par l'URSS en 1957. Apollo est le nom des vols habités américains, Ariane est le nom d'une série de fusées européennes et Mir était une station spatiale russe.");

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (17, N'Apollo', false), (17, N'Ariane', false), (17, N'Mir', false), (17, N'Spoutnik', true);

INSERT INTO Question (quizz_id, question_value, photo_question, photo_answer, answer_name, answer_explanation)
VALUES (6, N'Combien y a-t-il de planètes dans le système solaire ?', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677939/images-quizz/SystemeSolaireQuizz/quizz-1-question-3_tfihlo.jpg', N'https://res.cloudinary.com/dw3mwclgk/image/upload/v1670677938/images-quizz/SystemeSolaireQuizz/quizz-1-answer-3_uk0i4d.jpg', N'8', N"Depuis Août 2006, Pluton n'est plus considérée comme une planète, donc notre système solaire ne compte plus que 8 planètes.");

INSERT INTO QuizOption (question_id, question_answer, is_correct)
VALUES (18, N'5', false), (18, N'15', false), (18, N'17', false), (18, N'8', true);
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
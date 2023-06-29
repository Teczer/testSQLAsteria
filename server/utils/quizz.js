import { pool } from "./poolSQL.js";

// GET

export const getQuizzSQL = async () => {
  const sqlQuery = `
  SELECT
    q.question_value AS questionValue,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'questionAnswer', op.question_answer,
            'isCorrect', op.is_correct
        )
    ) AS questionOptions,
    q.photo_question AS photoQuestion,
    q.photo_answer AS photoAnswer,
    q.answer_explanation AS answerExplanation
FROM
    Question q
    JOIN QuizOption op ON q.id = op.question_id
    JOIN Quizz qu ON q.quizz_id = qu.id
WHERE
    qu.quizz_name = 'quizzSystemeSolaire01'
GROUP BY
    q.id;
  `;

  const [rows] = await pool.query(sqlQuery);

  return rows;
};

export const getQuizzSQLByCat = async (quizzType, quizzProgression) => {
  const m = `${quizzType}0${quizzProgression}`;

  console.log("c'est m", m);
  const sqlQuery = `
  SELECT
    q.question_value AS questionValue,
    JSON_ARRAYAGG(
        JSON_OBJECT(
            'questionAnswer', op.question_answer,
            'isCorrect', op.is_correct
        )
    ) AS questionOptions,
    q.photo_question AS photoQuestion,
    q.photo_answer AS photoAnswer,
    q.answer_explanation AS answerExplanation
FROM
    Question q
    JOIN QuizOption op ON q.id = op.question_id
    JOIN Quizz qu ON q.quizz_id = qu.id
WHERE
    qu.quizz_name = ?
GROUP BY
    q.id;`;
  const [rows] = await pool.query(sqlQuery, [m]);

  console.log("rows", rows);
  return rows;
};

// export const getAthleteSQLById = async (id) => {
//   const [rows] = await pool.query(`SELECT * FROM Athlete WHERE id=?`, [id]);

//   return rows[0];
// };

// // POST

// export const createAthleteSQL = async (nom, prenom) => {
//   await pool.query(`INSERT INTO Athlete (nom, prenom) VALUES (?,?)`, [
//     nom,
//     prenom,
//   ]);
// };

// // PATCH

// export const updateAthleteSQLById = async (nom, prenom, id) => {
//   await pool.query(`UPDATE Athlete SET nom = ? , prenom = ? WHERE id= ?`, [
//     nom,
//     prenom,
//     id,
//   ]);
// };

// // DELETE

// export const deleteAthleteSQLById = async (id) => {
//   await pool.query(`DELETE FROM Athlete WHERE id = ?`, [id]);
// };

// export const deletTitreyAthelete = async (athlete_id) => {
//   await pool.query("DELETE FROM titres WHERE athlete_id = ?", [athlete_id]);
// };

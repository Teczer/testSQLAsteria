import express from "express";
import {
  // getAthleteById,
  // deleteAthleteById,
  // createAthlete,
  // updateAthleteById,
  getQuizz,
  getQuizzByCat,
} from "../controller/quizzController.js";

const router = express.Router();

// GET

router.get("/", getQuizz);

// // POST

router.post("/", getQuizzByCat);

// router.get("/:id", getAthleteById);

// // POST

// router.post("/", createAthlete);

// // DELETE

// router.delete("/:id", deleteAthleteById);

// // PATCH

// router.patch("/:id", updateAthleteById);

export default router;

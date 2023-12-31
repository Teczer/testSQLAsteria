import express from "express";
import { getQuizz, getQuizzByCat } from "../controller/quizzController.js";

const router = express.Router();

// GET

router.get("/", getQuizz);

// GET:POST By Cat

router.post("/", getQuizzByCat);

export default router;

import express from "express";
import quizzRouter from "./routes/quizzRouter.js";
import cors from "cors";

const app = express();
app.use(cors());
app.use(express.json());

app.use("/quizz", quizzRouter);

app.listen(3010);

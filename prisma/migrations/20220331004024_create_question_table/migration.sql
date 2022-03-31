-- CreateTable
CREATE TABLE "question" (
    "id" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "response_type_id" INTEGER NOT NULL,

    CONSTRAINT "question_pkey" PRIMARY KEY ("id")
);

/*
  Warnings:

  - You are about to drop the `question` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `response_type` table. If the table is not empty, all the data it contains will be lost.
  - You are about to drop the `survey` table. If the table is not empty, all the data it contains will be lost.

*/
-- DropTable
DROP TABLE "question";

-- DropTable
DROP TABLE "response_type";

-- DropTable
DROP TABLE "survey";

-- CreateTable
CREATE TABLE "Survey" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "Survey_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Response_type" (
    "id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "Response_type_pkey" PRIMARY KEY ("id")
);

-- CreateTable
CREATE TABLE "Question" (
    "id" INTEGER NOT NULL,
    "text" TEXT NOT NULL,
    "response_type_id" INTEGER NOT NULL,

    CONSTRAINT "Question_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Question" ADD CONSTRAINT "Question_response_type_id_fkey" FOREIGN KEY ("response_type_id") REFERENCES "Response_type"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

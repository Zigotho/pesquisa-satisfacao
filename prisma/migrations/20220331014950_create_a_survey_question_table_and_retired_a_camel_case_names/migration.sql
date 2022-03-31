/*
  Warnings:

  - You are about to drop the column `createdAt` on the `Response_type` table. All the data in the column will be lost.
  - You are about to drop the column `createdAt` on the `Survey` table. All the data in the column will be lost.
  - Added the required column `created_at` to the `Response_type` table without a default value. This is not possible if the table is not empty.
  - Added the required column `created_at` to the `Survey` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Response_type" DROP COLUMN "createdAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL;

-- AlterTable
ALTER TABLE "Survey" DROP COLUMN "createdAt",
ADD COLUMN     "created_at" TIMESTAMP(3) NOT NULL;

-- CreateTable
CREATE TABLE "Survey_question" (
    "id" SERIAL NOT NULL,
    "survey_id" INTEGER NOT NULL,
    "question_id" INTEGER NOT NULL,

    CONSTRAINT "Survey_question_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Survey_question" ADD CONSTRAINT "Survey_question_survey_id_fkey" FOREIGN KEY ("survey_id") REFERENCES "Survey"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Survey_question" ADD CONSTRAINT "Survey_question_question_id_fkey" FOREIGN KEY ("question_id") REFERENCES "Question"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

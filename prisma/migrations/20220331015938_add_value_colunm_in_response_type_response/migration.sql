/*
  Warnings:

  - Added the required column `value` to the `Response_type_response` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE "Response_type_response" ADD COLUMN     "value" DOUBLE PRECISION NOT NULL;

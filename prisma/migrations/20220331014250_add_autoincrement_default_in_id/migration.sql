-- AlterTable
CREATE SEQUENCE "question_id_seq";
ALTER TABLE "Question" ALTER COLUMN "id" SET DEFAULT nextval('question_id_seq');
ALTER SEQUENCE "question_id_seq" OWNED BY "Question"."id";

-- AlterTable
CREATE SEQUENCE "response_type_id_seq";
ALTER TABLE "Response_type" ALTER COLUMN "id" SET DEFAULT nextval('response_type_id_seq');
ALTER SEQUENCE "response_type_id_seq" OWNED BY "Response_type"."id";

-- AlterTable
CREATE SEQUENCE "survey_id_seq";
ALTER TABLE "Survey" ALTER COLUMN "id" SET DEFAULT nextval('survey_id_seq');
ALTER SEQUENCE "survey_id_seq" OWNED BY "Survey"."id";

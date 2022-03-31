-- CreateTable
CREATE TABLE "survey" (
    "id" INTEGER NOT NULL,
    "name" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,
    "is_active" BOOLEAN NOT NULL,

    CONSTRAINT "survey_pkey" PRIMARY KEY ("id")
);

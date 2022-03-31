-- CreateTable
CREATE TABLE "response_type" (
    "id" INTEGER NOT NULL,
    "title" TEXT NOT NULL,
    "description" TEXT NOT NULL,
    "createdAt" TIMESTAMP(3) NOT NULL,

    CONSTRAINT "response_type_pkey" PRIMARY KEY ("id")
);

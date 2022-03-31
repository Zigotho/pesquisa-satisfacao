-- CreateTable
CREATE TABLE "Response_type_response" (
    "id" SERIAL NOT NULL,
    "response_type_id" INTEGER NOT NULL,
    "response_id" INTEGER NOT NULL,

    CONSTRAINT "Response_type_response_pkey" PRIMARY KEY ("id")
);

-- AddForeignKey
ALTER TABLE "Response_type_response" ADD CONSTRAINT "Response_type_response_response_type_id_fkey" FOREIGN KEY ("response_type_id") REFERENCES "Response_type"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

-- AddForeignKey
ALTER TABLE "Response_type_response" ADD CONSTRAINT "Response_type_response_response_id_fkey" FOREIGN KEY ("response_id") REFERENCES "Response"("id") ON DELETE RESTRICT ON UPDATE CASCADE;

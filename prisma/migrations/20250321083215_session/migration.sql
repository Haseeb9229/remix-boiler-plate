/*
  Warnings:

  - Added the required column `sessionId` to the `Product` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `product` ADD COLUMN `sessionId` BIGINT NOT NULL;

-- AddForeignKey
ALTER TABLE `Product` ADD CONSTRAINT `Product_sessionId_fkey` FOREIGN KEY (`sessionId`) REFERENCES `Session`(`_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

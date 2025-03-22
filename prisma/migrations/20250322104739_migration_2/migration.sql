/*
  Warnings:

  - Added the required column `sessionId` to the `Setting` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `setting` ADD COLUMN `sessionId` INTEGER NOT NULL;

-- AddForeignKey
ALTER TABLE `Setting` ADD CONSTRAINT `Setting_sessionId_fkey` FOREIGN KEY (`sessionId`) REFERENCES `Session`(`_id`) ON DELETE RESTRICT ON UPDATE CASCADE;

/*
  Warnings:

  - Added the required column `number` to the `ContAd` table without a default value. This is not possible if the table is not empty.

*/
-- RedefineTables
PRAGMA foreign_keys=OFF;
CREATE TABLE "new_ContAd" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "number" INTEGER NOT NULL,
    "cuntId" TEXT,
    CONSTRAINT "ContAd_cuntId_fkey" FOREIGN KEY ("cuntId") REFERENCES "Ad" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);
INSERT INTO "new_ContAd" ("cuntId", "id") SELECT "cuntId", "id" FROM "ContAd";
DROP TABLE "ContAd";
ALTER TABLE "new_ContAd" RENAME TO "ContAd";
PRAGMA foreign_key_check;
PRAGMA foreign_keys=ON;

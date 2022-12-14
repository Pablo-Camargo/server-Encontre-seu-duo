-- CreateTable
CREATE TABLE "Ad" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "gameId" TEXT NOT NULL,
    "name" TEXT NOT NULL,
    "yearsPlaying" INTEGER NOT NULL,
    "discord" TEXT NOT NULL,
    "weekDays" TEXT NOT NULL,
    "hourStart" INTEGER NOT NULL,
    "hourEnd" INTEGER NOT NULL,
    "useVoiceChannel" BOOLEAN NOT NULL,
    "createdAt" DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
);

-- CreateTable
CREATE TABLE "ContAd" (
    "id" TEXT NOT NULL PRIMARY KEY,
    "cuntId" TEXT,
    CONSTRAINT "ContAd_cuntId_fkey" FOREIGN KEY ("cuntId") REFERENCES "Ad" ("id") ON DELETE SET NULL ON UPDATE CASCADE
);

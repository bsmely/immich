-- NOTE: This file is auto generated by ./sql-generator

-- LibraryRepository.get
SELECT DISTINCT
  "distinctAlias"."LibraryEntity_id" AS "ids_LibraryEntity_id"
FROM
  (
    SELECT
      "LibraryEntity"."id" AS "LibraryEntity_id",
      "LibraryEntity"."name" AS "LibraryEntity_name",
      "LibraryEntity"."ownerId" AS "LibraryEntity_ownerId",
      "LibraryEntity"."importPaths" AS "LibraryEntity_importPaths",
      "LibraryEntity"."exclusionPatterns" AS "LibraryEntity_exclusionPatterns",
      "LibraryEntity"."createdAt" AS "LibraryEntity_createdAt",
      "LibraryEntity"."updatedAt" AS "LibraryEntity_updatedAt",
      "LibraryEntity"."deletedAt" AS "LibraryEntity_deletedAt",
      "LibraryEntity"."refreshedAt" AS "LibraryEntity_refreshedAt",
      "LibraryEntity__LibraryEntity_owner"."id" AS "LibraryEntity__LibraryEntity_owner_id",
      "LibraryEntity__LibraryEntity_owner"."name" AS "LibraryEntity__LibraryEntity_owner_name",
      "LibraryEntity__LibraryEntity_owner"."isAdmin" AS "LibraryEntity__LibraryEntity_owner_isAdmin",
      "LibraryEntity__LibraryEntity_owner"."email" AS "LibraryEntity__LibraryEntity_owner_email",
      "LibraryEntity__LibraryEntity_owner"."storageLabel" AS "LibraryEntity__LibraryEntity_owner_storageLabel",
      "LibraryEntity__LibraryEntity_owner"."oauthId" AS "LibraryEntity__LibraryEntity_owner_oauthId",
      "LibraryEntity__LibraryEntity_owner"."profileImagePath" AS "LibraryEntity__LibraryEntity_owner_profileImagePath",
      "LibraryEntity__LibraryEntity_owner"."shouldChangePassword" AS "LibraryEntity__LibraryEntity_owner_shouldChangePassword",
      "LibraryEntity__LibraryEntity_owner"."createdAt" AS "LibraryEntity__LibraryEntity_owner_createdAt",
      "LibraryEntity__LibraryEntity_owner"."deletedAt" AS "LibraryEntity__LibraryEntity_owner_deletedAt",
      "LibraryEntity__LibraryEntity_owner"."status" AS "LibraryEntity__LibraryEntity_owner_status",
      "LibraryEntity__LibraryEntity_owner"."updatedAt" AS "LibraryEntity__LibraryEntity_owner_updatedAt",
      "LibraryEntity__LibraryEntity_owner"."quotaSizeInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaSizeInBytes",
      "LibraryEntity__LibraryEntity_owner"."quotaUsageInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaUsageInBytes"
    FROM
      "libraries" "LibraryEntity"
      LEFT JOIN "users" "LibraryEntity__LibraryEntity_owner" ON "LibraryEntity__LibraryEntity_owner"."id" = "LibraryEntity"."ownerId"
      AND (
        "LibraryEntity__LibraryEntity_owner"."deletedAt" IS NULL
      )
    WHERE
      ((("LibraryEntity"."id" = $1)))
      AND ("LibraryEntity"."deletedAt" IS NULL)
  ) "distinctAlias"
ORDER BY
  "LibraryEntity_id" ASC
LIMIT
  1

-- LibraryRepository.getAll
SELECT
  "LibraryEntity"."id" AS "LibraryEntity_id",
  "LibraryEntity"."name" AS "LibraryEntity_name",
  "LibraryEntity"."ownerId" AS "LibraryEntity_ownerId",
  "LibraryEntity"."importPaths" AS "LibraryEntity_importPaths",
  "LibraryEntity"."exclusionPatterns" AS "LibraryEntity_exclusionPatterns",
  "LibraryEntity"."createdAt" AS "LibraryEntity_createdAt",
  "LibraryEntity"."updatedAt" AS "LibraryEntity_updatedAt",
  "LibraryEntity"."deletedAt" AS "LibraryEntity_deletedAt",
  "LibraryEntity"."refreshedAt" AS "LibraryEntity_refreshedAt",
  "LibraryEntity__LibraryEntity_owner"."id" AS "LibraryEntity__LibraryEntity_owner_id",
  "LibraryEntity__LibraryEntity_owner"."name" AS "LibraryEntity__LibraryEntity_owner_name",
  "LibraryEntity__LibraryEntity_owner"."isAdmin" AS "LibraryEntity__LibraryEntity_owner_isAdmin",
  "LibraryEntity__LibraryEntity_owner"."email" AS "LibraryEntity__LibraryEntity_owner_email",
  "LibraryEntity__LibraryEntity_owner"."storageLabel" AS "LibraryEntity__LibraryEntity_owner_storageLabel",
  "LibraryEntity__LibraryEntity_owner"."oauthId" AS "LibraryEntity__LibraryEntity_owner_oauthId",
  "LibraryEntity__LibraryEntity_owner"."profileImagePath" AS "LibraryEntity__LibraryEntity_owner_profileImagePath",
  "LibraryEntity__LibraryEntity_owner"."shouldChangePassword" AS "LibraryEntity__LibraryEntity_owner_shouldChangePassword",
  "LibraryEntity__LibraryEntity_owner"."createdAt" AS "LibraryEntity__LibraryEntity_owner_createdAt",
  "LibraryEntity__LibraryEntity_owner"."deletedAt" AS "LibraryEntity__LibraryEntity_owner_deletedAt",
  "LibraryEntity__LibraryEntity_owner"."status" AS "LibraryEntity__LibraryEntity_owner_status",
  "LibraryEntity__LibraryEntity_owner"."updatedAt" AS "LibraryEntity__LibraryEntity_owner_updatedAt",
  "LibraryEntity__LibraryEntity_owner"."quotaSizeInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaSizeInBytes",
  "LibraryEntity__LibraryEntity_owner"."quotaUsageInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaUsageInBytes"
FROM
  "libraries" "LibraryEntity"
  LEFT JOIN "users" "LibraryEntity__LibraryEntity_owner" ON "LibraryEntity__LibraryEntity_owner"."id" = "LibraryEntity"."ownerId"
  AND (
    "LibraryEntity__LibraryEntity_owner"."deletedAt" IS NULL
  )
WHERE
  "LibraryEntity"."deletedAt" IS NULL
ORDER BY
  "LibraryEntity"."createdAt" ASC

-- LibraryRepository.getAllDeleted
SELECT
  "LibraryEntity"."id" AS "LibraryEntity_id",
  "LibraryEntity"."name" AS "LibraryEntity_name",
  "LibraryEntity"."ownerId" AS "LibraryEntity_ownerId",
  "LibraryEntity"."importPaths" AS "LibraryEntity_importPaths",
  "LibraryEntity"."exclusionPatterns" AS "LibraryEntity_exclusionPatterns",
  "LibraryEntity"."createdAt" AS "LibraryEntity_createdAt",
  "LibraryEntity"."updatedAt" AS "LibraryEntity_updatedAt",
  "LibraryEntity"."deletedAt" AS "LibraryEntity_deletedAt",
  "LibraryEntity"."refreshedAt" AS "LibraryEntity_refreshedAt",
  "LibraryEntity__LibraryEntity_owner"."id" AS "LibraryEntity__LibraryEntity_owner_id",
  "LibraryEntity__LibraryEntity_owner"."name" AS "LibraryEntity__LibraryEntity_owner_name",
  "LibraryEntity__LibraryEntity_owner"."isAdmin" AS "LibraryEntity__LibraryEntity_owner_isAdmin",
  "LibraryEntity__LibraryEntity_owner"."email" AS "LibraryEntity__LibraryEntity_owner_email",
  "LibraryEntity__LibraryEntity_owner"."storageLabel" AS "LibraryEntity__LibraryEntity_owner_storageLabel",
  "LibraryEntity__LibraryEntity_owner"."oauthId" AS "LibraryEntity__LibraryEntity_owner_oauthId",
  "LibraryEntity__LibraryEntity_owner"."profileImagePath" AS "LibraryEntity__LibraryEntity_owner_profileImagePath",
  "LibraryEntity__LibraryEntity_owner"."shouldChangePassword" AS "LibraryEntity__LibraryEntity_owner_shouldChangePassword",
  "LibraryEntity__LibraryEntity_owner"."createdAt" AS "LibraryEntity__LibraryEntity_owner_createdAt",
  "LibraryEntity__LibraryEntity_owner"."deletedAt" AS "LibraryEntity__LibraryEntity_owner_deletedAt",
  "LibraryEntity__LibraryEntity_owner"."status" AS "LibraryEntity__LibraryEntity_owner_status",
  "LibraryEntity__LibraryEntity_owner"."updatedAt" AS "LibraryEntity__LibraryEntity_owner_updatedAt",
  "LibraryEntity__LibraryEntity_owner"."quotaSizeInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaSizeInBytes",
  "LibraryEntity__LibraryEntity_owner"."quotaUsageInBytes" AS "LibraryEntity__LibraryEntity_owner_quotaUsageInBytes"
FROM
  "libraries" "LibraryEntity"
  LEFT JOIN "users" "LibraryEntity__LibraryEntity_owner" ON "LibraryEntity__LibraryEntity_owner"."id" = "LibraryEntity"."ownerId"
WHERE
  ((NOT ("LibraryEntity"."deletedAt" IS NULL)))
ORDER BY
  "LibraryEntity"."createdAt" ASC

-- LibraryRepository.getStatistics
SELECT
  "libraries"."id" AS "libraries_id",
  "libraries"."name" AS "libraries_name",
  "libraries"."ownerId" AS "libraries_ownerId",
  "libraries"."importPaths" AS "libraries_importPaths",
  "libraries"."exclusionPatterns" AS "libraries_exclusionPatterns",
  "libraries"."createdAt" AS "libraries_createdAt",
  "libraries"."updatedAt" AS "libraries_updatedAt",
  "libraries"."deletedAt" AS "libraries_deletedAt",
  "libraries"."refreshedAt" AS "libraries_refreshedAt",
  COUNT("assets"."id") FILTER (
    WHERE
      "assets"."type" = 'IMAGE'
      AND "assets"."isVisible"
  ) AS "photos",
  COUNT("assets"."id") FILTER (
    WHERE
      "assets"."type" = 'VIDEO'
      AND "assets"."isVisible"
  ) AS "videos",
  COALESCE(SUM("exif"."fileSizeInByte"), 0) AS "usage"
FROM
  "libraries" "libraries"
  LEFT JOIN "assets" "assets" ON "assets"."libraryId" = "libraries"."id"
  AND ("assets"."deletedAt" IS NULL)
  LEFT JOIN "exif" "exif" ON "exif"."assetId" = "assets"."id"
WHERE
  ("libraries"."id" = $1)
  AND ("libraries"."deletedAt" IS NULL)
GROUP BY
  "libraries"."id"

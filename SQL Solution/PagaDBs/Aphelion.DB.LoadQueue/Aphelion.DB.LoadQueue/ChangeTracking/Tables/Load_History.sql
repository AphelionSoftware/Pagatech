CREATE TABLE [ChangeTracking].[Load_History] (
    [CurrentVersion]  BIGINT DEFAULT ((-1)) NOT NULL,
    [LastSyncVersion] BIGINT DEFAULT ((-1)) NOT NULL
);


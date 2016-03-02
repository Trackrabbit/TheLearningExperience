CREATE TABLE [dbo].[taErrorCode]
(
[ErrorCode] [int] NOT NULL,
[SourceProc] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ErrorDesc] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ErrorKeyFields] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ErrorParms] [varchar] (1000) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[taErrorCode] ADD CONSTRAINT [PKtaErrorCode] PRIMARY KEY NONCLUSTERED  ([ErrorCode]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1taErrorCode] ON [dbo].[taErrorCode] ([ErrorCode], [SourceProc], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2taErrorCode] ON [dbo].[taErrorCode] ([SourceProc], [ErrorCode], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[taErrorCode].[ErrorCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[taErrorCode].[SourceProc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[taErrorCode].[ErrorDesc]'
GO
GRANT REFERENCES ON  [dbo].[taErrorCode] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[taErrorCode] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[taErrorCode] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[taErrorCode] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[taErrorCode] TO [DYNGRP]
GO

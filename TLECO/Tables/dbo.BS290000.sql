CREATE TABLE [dbo].[BS290000]
(
[SEQNUMBR] [int] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[BSSI_STR255_1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_3] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_4] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_5] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_6] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_7] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_8] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_9] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_10] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_11] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_12] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_13] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_14] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_15] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Success] [tinyint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BS290000] ADD CONSTRAINT [CK__BS290000__DATE1__7A243B5E] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[BS290000] ADD CONSTRAINT [PKBS290000] PRIMARY KEY NONCLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS290000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BS290000].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[BSSI_STR255_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BS290000].[BSSI_Success]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BS290000].[ERRDESCR]'
GO
GRANT SELECT ON  [dbo].[BS290000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BS290000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BS290000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BS290000] TO [DYNGRP]
GO

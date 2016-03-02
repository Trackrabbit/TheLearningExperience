CREATE TABLE [dbo].[BSSI0000]
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
[BSSI_STR255_16] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_17] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_18] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_19] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_20] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_21] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_22] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_23] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_24] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_25] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_26] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_27] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_28] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_29] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_STR255_30] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Success] [tinyint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BSSI0000] ADD CONSTRAINT [CK__BSSI0000__DATE1__675C4B04] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[BSSI0000] ADD CONSTRAINT [PKBSSI0000] PRIMARY KEY NONCLUSTERED  ([SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0000].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BSSI0000].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_10]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_11]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_12]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_13]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_14]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_15]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_16]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_17]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_18]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_19]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_20]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_21]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_22]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_23]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_24]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_25]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_26]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_27]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_28]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_29]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[BSSI_STR255_30]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0000].[BSSI_Success]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0000].[ERRDESCR]'
GO
GRANT SELECT ON  [dbo].[BSSI0000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI0000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI0000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI0000] TO [DYNGRP]
GO

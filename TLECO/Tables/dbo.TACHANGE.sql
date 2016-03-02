CREATE TABLE [dbo].[TACHANGE]
(
[TATYPE] [smallint] NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[TA_Posting_Type] [smallint] NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[TA_Account_Type] [smallint] NOT NULL,
[TAFROMINDX] [int] NOT NULL,
[TATOINDX] [int] NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Omnesa_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Omnesa_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Omnesa_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Omnesa_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TACHANGE] ADD CONSTRAINT [PKTACHANGE] PRIMARY KEY CLUSTERED  ([ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[TATYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[TA_Posting_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[TA_Account_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[TAFROMINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TACHANGE].[TATOINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[Omnesa_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[Omnesa_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[Omnesa_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TACHANGE].[Omnesa_4]'
GO
GRANT SELECT ON  [dbo].[TACHANGE] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TACHANGE] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TACHANGE] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TACHANGE] TO [DYNGRP]
GO

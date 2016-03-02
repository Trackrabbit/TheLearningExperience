CREATE TABLE [dbo].[GL00100_bak1016]
(
[ACTINDX] [int] NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTALIAS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNACSGMT] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTNGTYP] [smallint] NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[ACTIVE] [tinyint] NOT NULL,
[TPCLBLNC] [smallint] NOT NULL,
[DECPLACS] [smallint] NOT NULL,
[FXDORVAR] [smallint] NOT NULL,
[BALFRCLC] [smallint] NOT NULL,
[DSPLKUPS] [binary] (4) NOT NULL,
[CNVRMTHD] [smallint] NOT NULL,
[HSTRCLRT] [numeric] (19, 7) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USERDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDEF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PostSlsIn] [smallint] NOT NULL,
[PostIvIn] [smallint] NOT NULL,
[PostPurchIn] [smallint] NOT NULL,
[PostPRIn] [smallint] NOT NULL,
[ADJINFL] [tinyint] NOT NULL,
[INFLAREV] [int] NOT NULL,
[INFLAEQU] [int] NOT NULL,
[ACCTENTR] [tinyint] NOT NULL,
[USRDEFS1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USRDEFS2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Clear_Balance] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTALIAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[MNACSGMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[TPCLBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[DSPLKUPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[CNVRMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00100_bak1016].[HSTRCLRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[GL00100_bak1016].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00100_bak1016].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00100_bak1016].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[PostSlsIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[PostIvIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[PostPurchIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[PostPRIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ADJINFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[INFLAREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[INFLAEQU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[ACCTENTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[USRDEFS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100_bak1016].[USRDEFS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100_bak1016].[Clear_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[GL00100_bak1016].[DEX_ROW_TS]'
GO
GRANT SELECT ON  [dbo].[GL00100_bak1016] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL00100_bak1016] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL00100_bak1016] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL00100_bak1016] TO [DYNGRP]
GO

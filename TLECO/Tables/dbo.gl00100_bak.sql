CREATE TABLE [dbo].[gl00100_bak]
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
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTALIAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[MNACSGMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[PSTNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[TPCLBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[DECPLACS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[FXDORVAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[BALFRCLC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[DSPLKUPS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[CNVRMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl00100_bak].[HSTRCLRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[gl00100_bak].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl00100_bak].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl00100_bak].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[USERDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[USERDEF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[PostSlsIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[PostIvIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[PostPurchIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[PostPRIn]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ADJINFL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[INFLAREV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[INFLAEQU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[ACCTENTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[USRDEFS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[gl00100_bak].[USRDEFS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[gl00100_bak].[Clear_Balance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[gl00100_bak].[DEX_ROW_TS]'
GO
GRANT SELECT ON  [dbo].[gl00100_bak] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[gl00100_bak] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[gl00100_bak] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[gl00100_bak] TO [DYNGRP]
GO

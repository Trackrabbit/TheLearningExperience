CREATE TABLE [dbo].[GL00100_bak1228]
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

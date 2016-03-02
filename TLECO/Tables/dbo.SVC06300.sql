CREATE TABLE [dbo].[SVC06300]
(
[STATIONID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQUENCE1] [numeric] (19, 5) NOT NULL,
[Queue_Status] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WORECTYPE] [smallint] NOT NULL,
[WORKORDNUM] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Route_Sequence] [numeric] (19, 5) NOT NULL,
[SVC_Depot_Priority] [numeric] (19, 5) NOT NULL,
[Status] [smallint] NOT NULL,
[TECHID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ETTR] [numeric] (19, 5) NOT NULL,
[ETADTE] [datetime] NOT NULL,
[ETATME] [datetime] NOT NULL,
[ECOMPDT] [datetime] NOT NULL,
[EComp_Time] [datetime] NOT NULL,
[ACTSTRTDTE] [datetime] NOT NULL,
[ACTSTRTTME] [datetime] NOT NULL,
[LSTSTAID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Sequence] [numeric] (19, 5) NOT NULL,
[NXTSTATID] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NXTSEQ] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__ACTSTR__1C1DF2EF] CHECK ((datepart(day,[ACTSTRTTME])=(1) AND datepart(month,[ACTSTRTTME])=(1) AND datepart(year,[ACTSTRTTME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__EComp___1E063B61] CHECK ((datepart(day,[EComp_Time])=(1) AND datepart(month,[EComp_Time])=(1) AND datepart(year,[EComp_Time])=(1900)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__ETATME__1FEE83D3] CHECK ((datepart(day,[ETATME])=(1) AND datepart(month,[ETATME])=(1) AND datepart(year,[ETATME])=(1900)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__ACTSTR__1B29CEB6] CHECK ((datepart(hour,[ACTSTRTDTE])=(0) AND datepart(minute,[ACTSTRTDTE])=(0) AND datepart(second,[ACTSTRTDTE])=(0) AND datepart(millisecond,[ACTSTRTDTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__ECOMPD__1D121728] CHECK ((datepart(hour,[ECOMPDT])=(0) AND datepart(minute,[ECOMPDT])=(0) AND datepart(second,[ECOMPDT])=(0) AND datepart(millisecond,[ECOMPDT])=(0)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [CK__SVC06300__ETADTE__1EFA5F9A] CHECK ((datepart(hour,[ETADTE])=(0) AND datepart(minute,[ETADTE])=(0) AND datepart(second,[ETADTE])=(0) AND datepart(millisecond,[ETADTE])=(0)))
GO
ALTER TABLE [dbo].[SVC06300] ADD CONSTRAINT [PKSVC06300] PRIMARY KEY NONCLUSTERED  ([STATIONID], [Status], [SVC_Depot_Priority], [SEQUENCE1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SVC06300] ON [dbo].[SVC06300] ([NXTSTATID], [NXTSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC06300] ON [dbo].[SVC06300] ([WORECTYPE], [WORKORDNUM], [STATIONID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[STATIONID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[SEQUENCE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[Queue_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06300].[WORECTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[WORKORDNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[Route_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[SVC_Depot_Priority]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC06300].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[TECHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[ETTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[ETADTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[ETATME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[ECOMPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[EComp_Time]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[ACTSTRTDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC06300].[ACTSTRTTME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[LSTSTAID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[Last_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC06300].[NXTSTATID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC06300].[NXTSEQ]'
GO
GRANT SELECT ON  [dbo].[SVC06300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC06300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC06300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC06300] TO [DYNGRP]
GO

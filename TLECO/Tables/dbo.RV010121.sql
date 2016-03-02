CREATE TABLE [dbo].[RV010121]
(
[EMPID_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFLASTREVIEW_I] [datetime] NOT NULL,
[REVIEWRATINGDECIMA_I] [numeric] (19, 5) NOT NULL,
[REVIEWSETUPCODE_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REVIEWSETUPNAME_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REVIEWRANGE_I] [smallint] NOT NULL,
[REVIEWEDBY_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[APPROVEDBY_I] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEOFNEXTREVIEW_I] [datetime] NOT NULL,
[EFFICIENCY_I] [smallint] NOT NULL,
[COSTOFERROR_I] [numeric] (19, 5) NOT NULL,
[COSTOFQUALITY_I] [numeric] (19, 5) NOT NULL,
[RECOMMENDEDWAGE_I] [numeric] (19, 5) NOT NULL,
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[PROBATION_I] [tinyint] NOT NULL,
[TOTALWEIGHT_I] [smallint] NOT NULL,
[DESPOSCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[IMPROVEMENT_I] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALPERCHANGE_I] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[NOTESINDEX_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX2_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX3_I] [numeric] (19, 5) NOT NULL,
[NOTESINDEX4_I] [numeric] (19, 5) NOT NULL,
[USEWORDSGB_I] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RV010121] ADD CONSTRAINT [CK__RV010121__CHANGE__73BB5F6E] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[RV010121] ADD CONSTRAINT [CK__RV010121__DATEOF__74AF83A7] CHECK ((datepart(hour,[DATEOFLASTREVIEW_I])=(0) AND datepart(minute,[DATEOFLASTREVIEW_I])=(0) AND datepart(second,[DATEOFLASTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFLASTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[RV010121] ADD CONSTRAINT [CK__RV010121__DATEOF__75A3A7E0] CHECK ((datepart(hour,[DATEOFNEXTREVIEW_I])=(0) AND datepart(minute,[DATEOFNEXTREVIEW_I])=(0) AND datepart(second,[DATEOFNEXTREVIEW_I])=(0) AND datepart(millisecond,[DATEOFNEXTREVIEW_I])=(0)))
GO
ALTER TABLE [dbo].[RV010121] ADD CONSTRAINT [CK__RV010121__EFFECT__7697CC19] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[RV010121] ADD CONSTRAINT [PKRV010121] PRIMARY KEY CLUSTERED  ([EMPID_I], [DATEOFLASTREVIEW_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RV010121] ON [dbo].[RV010121] ([DATEOFLASTREVIEW_I], [EMPID_I], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[EMPID_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RV010121].[DATEOFLASTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[REVIEWRATINGDECIMA_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[REVIEWSETUPCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[REVIEWSETUPNAME_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[REVIEWRANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[REVIEWEDBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[APPROVEDBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RV010121].[DATEOFNEXTREVIEW_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[EFFICIENCY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[COSTOFERROR_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[COSTOFQUALITY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[RECOMMENDEDWAGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RV010121].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[PROBATION_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[TOTALWEIGHT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[DESPOSCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[IMPROVEMENT_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[SALPERCHANGE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RV010121].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RV010121].[CHANGEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[NOTESINDEX_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[NOTESINDEX2_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[NOTESINDEX3_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RV010121].[NOTESINDEX4_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RV010121].[USEWORDSGB_I]'
GO
GRANT SELECT ON  [dbo].[RV010121] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RV010121] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RV010121] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RV010121] TO [DYNGRP]
GO

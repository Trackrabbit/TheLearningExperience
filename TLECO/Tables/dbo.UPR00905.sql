CREATE TABLE [dbo].[UPR00905]
(
[YEAR1] [smallint] NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BENEFIT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Effective_Date] [datetime] NOT NULL,
[OfferOfCoverageCode] [smallint] NOT NULL,
[SafeHarborCode] [smallint] NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00905] ADD CONSTRAINT [CK__UPR00905__CHANGE__39CB879F] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR00905] ADD CONSTRAINT [CK__UPR00905__Effect__38D76366] CHECK ((datepart(hour,[Effective_Date])=(0) AND datepart(minute,[Effective_Date])=(0) AND datepart(second,[Effective_Date])=(0) AND datepart(millisecond,[Effective_Date])=(0)))
GO
ALTER TABLE [dbo].[UPR00905] ADD CONSTRAINT [PKUPR00905] PRIMARY KEY CLUSTERED  ([YEAR1], [EMPLOYID], [BENEFIT], [Effective_Date]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00905].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00905].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00905].[BENEFIT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00905].[Effective_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00905].[OfferOfCoverageCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00905].[SafeHarborCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00905].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR00905].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR00905] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00905] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00905] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00905] TO [DYNGRP]
GO

CREATE TABLE [dbo].[FA01200]
(
[Physical_Inventory_Index] [int] NOT NULL,
[Physical_Location_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Asset_Label] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Verified_Date] [datetime] NOT NULL,
[PIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA01200] ADD CONSTRAINT [CK__FA01200__LASTMNT__685E57C7] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA01200] ADD CONSTRAINT [CK__FA01200__LASTMNT__676A338E] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01200] ADD CONSTRAINT [CK__FA01200__Verifie__69527C00] CHECK ((datepart(hour,[Verified_Date])=(0) AND datepart(minute,[Verified_Date])=(0) AND datepart(second,[Verified_Date])=(0) AND datepart(millisecond,[Verified_Date])=(0)))
GO
ALTER TABLE [dbo].[FA01200] ADD CONSTRAINT [PKFA01200] PRIMARY KEY NONCLUSTERED  ([Physical_Inventory_Index]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA01200] ON [dbo].[FA01200] ([Asset_Label], [Physical_Location_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA01200] ON [dbo].[FA01200] ([Physical_Location_ID], [Asset_Label]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA01200] ON [dbo].[FA01200] ([Physical_Location_ID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01200].[Physical_Inventory_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01200].[Physical_Location_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01200].[Asset_Label]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01200].[Verified_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01200].[PIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01200].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01200].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01200].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA01200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01200] TO [DYNGRP]
GO

CREATE TABLE [dbo].[FA42400]
(
[Physical_Location_Index] [int] NOT NULL,
[Physical_Location_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Physical_Location_Desc] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_Inventory_Date] [datetime] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA42400] ADD CONSTRAINT [CK__FA42400__LASTMNT__5145E845] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA42400] ADD CONSTRAINT [CK__FA42400__Last_In__523A0C7E] CHECK ((datepart(hour,[Last_Inventory_Date])=(0) AND datepart(minute,[Last_Inventory_Date])=(0) AND datepart(second,[Last_Inventory_Date])=(0) AND datepart(millisecond,[Last_Inventory_Date])=(0)))
GO
ALTER TABLE [dbo].[FA42400] ADD CONSTRAINT [CK__FA42400__LASTMNT__5051C40C] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA42400] ADD CONSTRAINT [PKFA42400] PRIMARY KEY NONCLUSTERED  ([Physical_Location_Index]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA42400] ON [dbo].[FA42400] ([Physical_Location_Desc], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA42400] ON [dbo].[FA42400] ([Physical_Location_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA42400].[Physical_Location_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42400].[Physical_Location_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42400].[Physical_Location_Desc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42400].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA42400].[Last_Inventory_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA42400].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA42400].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA42400].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA42400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA42400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA42400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA42400] TO [DYNGRP]
GO

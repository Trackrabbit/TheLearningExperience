CREATE TABLE [dbo].[FA01300]
(
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RCPTLNNM] [int] NOT NULL,
[ASSETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETIDSUF] [smallint] NOT NULL,
[SHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXTASSETDESC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_Asset_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRUCTUREID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETCLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETTYPE] [smallint] NOT NULL,
[PROPTYPE] [smallint] NOT NULL,
[Create_Multiple_Fixed_As] [tinyint] NOT NULL,
[ASSETCURRMAINT] [numeric] (19, 5) NOT NULL,
[ASSETYTDMAINT] [numeric] (19, 5) NOT NULL,
[ASSETLTDMAINT] [numeric] (19, 5) NOT NULL,
[LASTMAINTDATE] [datetime] NOT NULL,
[ASSESSEDVALUE] [numeric] (19, 5) NOT NULL,
[MFGRNAME] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODELNUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WARRENTYDATE] [datetime] NOT NULL,
[CUSTODIAN] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
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
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [CK__FA01300__LASTMNT__6E17311D] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [CK__FA01300__LASTMAI__6C2EE8AB] CHECK ((datepart(hour,[LASTMAINTDATE])=(0) AND datepart(minute,[LASTMAINTDATE])=(0) AND datepart(second,[LASTMAINTDATE])=(0) AND datepart(millisecond,[LASTMAINTDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [CK__FA01300__LASTMNT__6D230CE4] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [CK__FA01300__Verifie__6F0B5556] CHECK ((datepart(hour,[Verified_Date])=(0) AND datepart(minute,[Verified_Date])=(0) AND datepart(second,[Verified_Date])=(0) AND datepart(millisecond,[Verified_Date])=(0)))
GO
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [CK__FA01300__WARRENT__6FFF798F] CHECK ((datepart(hour,[WARRENTYDATE])=(0) AND datepart(minute,[WARRENTYDATE])=(0) AND datepart(second,[WARRENTYDATE])=(0) AND datepart(millisecond,[WARRENTYDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01300] ADD CONSTRAINT [PKFA01300] PRIMARY KEY CLUSTERED  ([POPRCTNM], [RCPTLNNM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01300].[RCPTLNNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[ASSETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01300].[ASSETIDSUF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[SHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[EXTASSETDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[Master_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[STRUCTUREID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[ASSETCLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01300].[ASSETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01300].[PROPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01300].[Create_Multiple_Fixed_As]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01300].[ASSETCURRMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01300].[ASSETYTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01300].[ASSETLTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01300].[LASTMAINTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01300].[ASSESSEDVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[MFGRNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[MODELNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01300].[WARRENTYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[CUSTODIAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[Physical_Location_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[Asset_Label]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01300].[Verified_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[PIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01300].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01300].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01300].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA01300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01300] TO [DYNGRP]
GO

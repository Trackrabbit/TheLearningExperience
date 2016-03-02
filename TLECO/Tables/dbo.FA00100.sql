CREATE TABLE [dbo].[FA00100]
(
[ASSETINDEX] [int] NOT NULL,
[ASSETID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETIDSUF] [smallint] NOT NULL,
[SHRTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETDESC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXTASSETDESC] [char] (41) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Master_Asset_ID] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRUCTUREID] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ASSETCLASSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCATNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACQDATE] [datetime] NOT NULL,
[Acquisition_Cost] [numeric] (19, 5) NOT NULL,
[ASSETTYPE] [smallint] NOT NULL,
[ASSETSTATUS] [smallint] NOT NULL,
[PROPTYPE] [smallint] NOT NULL,
[ASSETQTY] [int] NOT NULL,
[ASSETBEGQTY] [int] NOT NULL,
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
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DATEADDED] [datetime] NOT NULL,
[DELETEDATE] [datetime] NOT NULL,
[Physical_Location_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Asset_Label] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Verified_Date] [datetime] NOT NULL,
[PIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTPURCHLINESEQ] [int] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAliasID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__LASTMNT__6D58170E] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__ACQDATE__689361F1] CHECK ((datepart(hour,[ACQDATE])=(0) AND datepart(minute,[ACQDATE])=(0) AND datepart(second,[ACQDATE])=(0) AND datepart(millisecond,[ACQDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__DATEADD__6987862A] CHECK ((datepart(hour,[DATEADDED])=(0) AND datepart(minute,[DATEADDED])=(0) AND datepart(second,[DATEADDED])=(0) AND datepart(millisecond,[DATEADDED])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__DELETED__6A7BAA63] CHECK ((datepart(hour,[DELETEDATE])=(0) AND datepart(minute,[DELETEDATE])=(0) AND datepart(second,[DELETEDATE])=(0) AND datepart(millisecond,[DELETEDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__LASTMAI__6B6FCE9C] CHECK ((datepart(hour,[LASTMAINTDATE])=(0) AND datepart(minute,[LASTMAINTDATE])=(0) AND datepart(second,[LASTMAINTDATE])=(0) AND datepart(millisecond,[LASTMAINTDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__LASTMNT__6C63F2D5] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__Verifie__6E4C3B47] CHECK ((datepart(hour,[Verified_Date])=(0) AND datepart(minute,[Verified_Date])=(0) AND datepart(second,[Verified_Date])=(0) AND datepart(millisecond,[Verified_Date])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [CK__FA00100__WARRENT__6F405F80] CHECK ((datepart(hour,[WARRENTYDATE])=(0) AND datepart(minute,[WARRENTYDATE])=(0) AND datepart(second,[WARRENTYDATE])=(0) AND datepart(millisecond,[WARRENTYDATE])=(0)))
GO
ALTER TABLE [dbo].[FA00100] ADD CONSTRAINT [PKFA00100] PRIMARY KEY CLUSTERED  ([ASSETINDEX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8FA00100] ON [dbo].[FA00100] ([Asset_Label], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA00100] ON [dbo].[FA00100] ([ASSETCLASSID], [ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA00100] ON [dbo].[FA00100] ([ASSETDESC], [ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA00100] ON [dbo].[FA00100] ([ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7FA00100] ON [dbo].[FA00100] ([ASSETSTATUS], [ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA00100] ON [dbo].[FA00100] ([LOCATNID], [ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK9FA00100] ON [dbo].[FA00100] ([Physical_Location_ID], [Asset_Label], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6FA00100] ON [dbo].[FA00100] ([STRUCTUREID], [ASSETID], [ASSETIDSUF]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETINDEX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[ASSETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETIDSUF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[SHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[ASSETDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[EXTASSETDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[Master_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[STRUCTUREID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[ASSETCLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[ACQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[Acquisition_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[PROPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[ASSETBEGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[ASSETCURRMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[ASSETYTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[ASSETLTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[LASTMAINTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[ASSESSEDVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[MFGRNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[MODELNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[WARRENTYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[CUSTODIAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA00100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[DATEADDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[DELETEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[Physical_Location_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[Asset_Label]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[Verified_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[PIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[LASTPURCHLINESEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA00100].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA00100].[LASTMNTDUSERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA00100].[aaAliasID]'
GO
GRANT SELECT ON  [dbo].[FA00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA00100] TO [DYNGRP]
GO

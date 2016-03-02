CREATE TABLE [dbo].[FA01100]
(
[FA_AP_Post_Index] [int] NOT NULL,
[MARKED] [tinyint] NOT NULL,
[FAPRIMARY] [smallint] NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[APPLDAMT] [numeric] (19, 5) NOT NULL,
[ORAPPAMT] [numeric] (19, 5) NOT NULL,
[Purchased_Quantity] [int] NOT NULL,
[Applied_Quantity] [int] NOT NULL,
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
[Orig_Acquisition_Cost] [numeric] (19, 5) NOT NULL,
[ASSETTYPE] [smallint] NOT NULL,
[PROPTYPE] [smallint] NOT NULL,
[ASSETQTY] [int] NOT NULL,
[ASSETBEGQTY] [int] NOT NULL,
[ASSETCURRMAINT] [numeric] (19, 5) NOT NULL,
[ASSETYTDMAINT] [numeric] (19, 5) NOT NULL,
[ASSETLTDMAINT] [numeric] (19, 5) NOT NULL,
[LASTMAINTDATE] [datetime] NOT NULL,
[ASSESSEDVALUE] [numeric] (19, 5) NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORCTRNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PORDNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PO_Line] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MFGRNAME] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODELNUMBER] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WARRENTYDATE] [datetime] NOT NULL,
[CUSTODIAN] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATEADDED] [datetime] NOT NULL,
[DELETEDATE] [datetime] NOT NULL,
[Physical_Location_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Asset_Label] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Verified_Date] [datetime] NOT NULL,
[PIN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[XCHGRATE] [numeric] (19, 7) NOT NULL,
[EXCHDATE] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[EXGTBLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RATETPID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RTCLCMTD] [smallint] NOT NULL,
[DENXRATE] [numeric] (19, 7) NOT NULL,
[MCTRXSTT] [smallint] NOT NULL,
[LASTMNTDDATE] [datetime] NOT NULL,
[LASTMNTDTIME] [datetime] NOT NULL,
[LASTMNTDUSERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__LASTMNT__61B15A38] CHECK ((datepart(day,[LASTMNTDTIME])=(1) AND datepart(month,[LASTMNTDTIME])=(1) AND datepart(year,[LASTMNTDTIME])=(1900)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__TIME1__62A57E71] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__ACQDATE__5B045CA9] CHECK ((datepart(hour,[ACQDATE])=(0) AND datepart(minute,[ACQDATE])=(0) AND datepart(second,[ACQDATE])=(0) AND datepart(millisecond,[ACQDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__DATEADD__5BF880E2] CHECK ((datepart(hour,[DATEADDED])=(0) AND datepart(minute,[DATEADDED])=(0) AND datepart(second,[DATEADDED])=(0) AND datepart(millisecond,[DATEADDED])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__DELETED__5CECA51B] CHECK ((datepart(hour,[DELETEDATE])=(0) AND datepart(minute,[DELETEDATE])=(0) AND datepart(second,[DELETEDATE])=(0) AND datepart(millisecond,[DELETEDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__DOCDATE__5DE0C954] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__EXCHDAT__5ED4ED8D] CHECK ((datepart(hour,[EXCHDATE])=(0) AND datepart(minute,[EXCHDATE])=(0) AND datepart(second,[EXCHDATE])=(0) AND datepart(millisecond,[EXCHDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__LASTMAI__5FC911C6] CHECK ((datepart(hour,[LASTMAINTDATE])=(0) AND datepart(minute,[LASTMAINTDATE])=(0) AND datepart(second,[LASTMAINTDATE])=(0) AND datepart(millisecond,[LASTMAINTDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__LASTMNT__60BD35FF] CHECK ((datepart(hour,[LASTMNTDDATE])=(0) AND datepart(minute,[LASTMNTDDATE])=(0) AND datepart(second,[LASTMNTDDATE])=(0) AND datepart(millisecond,[LASTMNTDDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__Verifie__6399A2AA] CHECK ((datepart(hour,[Verified_Date])=(0) AND datepart(minute,[Verified_Date])=(0) AND datepart(second,[Verified_Date])=(0) AND datepart(millisecond,[Verified_Date])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [CK__FA01100__WARRENT__648DC6E3] CHECK ((datepart(hour,[WARRENTYDATE])=(0) AND datepart(minute,[WARRENTYDATE])=(0) AND datepart(second,[WARRENTYDATE])=(0) AND datepart(millisecond,[WARRENTYDATE])=(0)))
GO
ALTER TABLE [dbo].[FA01100] ADD CONSTRAINT [PKFA01100] PRIMARY KEY CLUSTERED  ([FA_AP_Post_Index]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5FA01100] ON [dbo].[FA01100] ([MARKED], [LASTMNTDUSERID], [FA_AP_Post_Index]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4FA01100] ON [dbo].[FA01100] ([ORCTRNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3FA01100] ON [dbo].[FA01100] ([PORDNMBR], [PO_Line], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2FA01100] ON [dbo].[FA01100] ([VENDORID], [ORCTRNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[FA_AP_Post_Index]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[MARKED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[FAPRIMARY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[APPLDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[ORAPPAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[Purchased_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[Applied_Quantity]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[ASSETID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[ASSETIDSUF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[SHRTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[ASSETDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[EXTASSETDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[Master_Asset_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[STRUCTUREID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[ASSETCLASSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[LOCATNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[ACQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[Acquisition_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[Orig_Acquisition_Cost]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[ASSETTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[PROPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[ASSETQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[ASSETBEGQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[ASSETCURRMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[ASSETYTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[ASSETLTDMAINT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[LASTMAINTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[ASSESSEDVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[ORCTRNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[PORDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[PO_Line]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[MFGRNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[MODELNUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[WARRENTYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[CUSTODIAN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[DATEADDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[DELETEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[Physical_Location_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[Asset_Label]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[Verified_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[PIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[XCHGRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[EXCHDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[EXGTBLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[RATETPID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[RTCLCMTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[FA01100].[DENXRATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[FA01100].[MCTRXSTT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[LASTMNTDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[FA01100].[LASTMNTDTIME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[FA01100].[LASTMNTDUSERID]'
GO
GRANT SELECT ON  [dbo].[FA01100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[FA01100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[FA01100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[FA01100] TO [DYNGRP]
GO

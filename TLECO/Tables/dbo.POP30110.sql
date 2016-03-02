CREATE TABLE [dbo].[POP30110]
(
[PONUMBER] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORD] [int] NOT NULL,
[POLNESTA] [smallint] NOT NULL,
[POTYPE] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITNUM] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDITDSC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NONINVEN] [smallint] NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOFM] [char] (9) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UMQTYINB] [numeric] (19, 5) NOT NULL,
[QTYORDER] [numeric] (19, 5) NOT NULL,
[QTYCANCE] [numeric] (19, 5) NOT NULL,
[UNITCOST] [numeric] (19, 5) NOT NULL,
[EXTDCOST] [numeric] (19, 5) NOT NULL,
[INVINDX] [int] NOT NULL,
[REQDATE] [datetime] NOT NULL,
[PRMDATE] [datetime] NOT NULL,
[PRMSHPDTE] [datetime] NOT NULL,
[REQSTDBY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMNTID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[POLNEARY_1] [numeric] (19, 5) NOT NULL,
[POLNEARY_2] [numeric] (19, 5) NOT NULL,
[POLNEARY_3] [numeric] (19, 5) NOT NULL,
[POLNEARY_4] [numeric] (19, 5) NOT NULL,
[POLNEARY_5] [numeric] (19, 5) NOT NULL,
[POLNEARY_6] [numeric] (19, 5) NOT NULL,
[POLNEARY_7] [numeric] (19, 5) NOT NULL,
[POLNEARY_8] [numeric] (19, 5) NOT NULL,
[POLNEARY_9] [numeric] (19, 5) NOT NULL,
[DECPLCUR] [smallint] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[BRKFLD1] [smallint] NOT NULL,
[JOBNUMBR] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTCODE] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COSTTYPE] [smallint] NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ORUNTCST] [numeric] (19, 5) NOT NULL,
[OREXTCST] [numeric] (19, 5) NOT NULL,
[LINEORIGIN] [smallint] NOT NULL,
[FREEONBOARD] [smallint] NOT NULL,
[ODECPLCU] [smallint] NOT NULL,
[Product_Indicator] [smallint] NOT NULL,
[Source_Document_Number] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Source_Document_Line_Num] [smallint] NOT NULL,
[RELEASEBYDATE] [datetime] NOT NULL,
[Released_Date] [datetime] NOT NULL,
[Purchase_IV_Item_Taxable] [smallint] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Site_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PURCHSITETXSCHSRC] [smallint] NOT NULL,
[BSIVCTTL] [tinyint] NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[BCKTXAMT] [numeric] (19, 5) NOT NULL,
[OBTAXAMT] [numeric] (19, 5) NOT NULL,
[Landed_Cost_Group_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LineNumber] [smallint] NOT NULL,
[ORIGPRMDATE] [datetime] NOT NULL,
[FSTRCPTDT] [datetime] NOT NULL,
[LSTRCPTDT] [datetime] NOT NULL,
[RELEASE] [smallint] NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CMPNYNAM] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CONTACT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRSOURCE] [smallint] NOT NULL,
[Flags] [smallint] NOT NULL,
[ProjNum] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CostCatID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[Print_Phone_NumberGB] [smallint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__POP30110__DEX_RO__68150A5B] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_POP30110U] ON [dbo].[POP30110] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.POP30110 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.POP30110, inserted WHERE POP30110.PONUMBER = inserted.PONUMBER AND POP30110.ORD = inserted.ORD AND POP30110.BRKFLD1 = inserted.BRKFLD1 END set nocount off    
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__FSTRCP__09B45E9A] CHECK ((datepart(hour,[FSTRCPTDT])=(0) AND datepart(minute,[FSTRCPTDT])=(0) AND datepart(second,[FSTRCPTDT])=(0) AND datepart(millisecond,[FSTRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__LSTRCP__0AA882D3] CHECK ((datepart(hour,[LSTRCPTDT])=(0) AND datepart(minute,[LSTRCPTDT])=(0) AND datepart(second,[LSTRCPTDT])=(0) AND datepart(millisecond,[LSTRCPTDT])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__ORIGPR__0B9CA70C] CHECK ((datepart(hour,[ORIGPRMDATE])=(0) AND datepart(minute,[ORIGPRMDATE])=(0) AND datepart(second,[ORIGPRMDATE])=(0) AND datepart(millisecond,[ORIGPRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__PRMDAT__0C90CB45] CHECK ((datepart(hour,[PRMDATE])=(0) AND datepart(minute,[PRMDATE])=(0) AND datepart(second,[PRMDATE])=(0) AND datepart(millisecond,[PRMDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__PRMSHP__0D84EF7E] CHECK ((datepart(hour,[PRMSHPDTE])=(0) AND datepart(minute,[PRMSHPDTE])=(0) AND datepart(second,[PRMSHPDTE])=(0) AND datepart(millisecond,[PRMSHPDTE])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__RELEAS__0E7913B7] CHECK ((datepart(hour,[RELEASEBYDATE])=(0) AND datepart(minute,[RELEASEBYDATE])=(0) AND datepart(second,[RELEASEBYDATE])=(0) AND datepart(millisecond,[RELEASEBYDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__Releas__10615C29] CHECK ((datepart(hour,[Released_Date])=(0) AND datepart(minute,[Released_Date])=(0) AND datepart(second,[Released_Date])=(0) AND datepart(millisecond,[Released_Date])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [CK__POP30110__REQDAT__0F6D37F0] CHECK ((datepart(hour,[REQDATE])=(0) AND datepart(minute,[REQDATE])=(0) AND datepart(second,[REQDATE])=(0) AND datepart(millisecond,[REQDATE])=(0)))
GO
ALTER TABLE [dbo].[POP30110] ADD CONSTRAINT [PKPOP30110] PRIMARY KEY NONCLUSTERED  ([PONUMBER], [ORD], [BRKFLD1]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2POP30110] ON [dbo].[POP30110] ([ITEMNMBR], [PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5POP30110] ON [dbo].[POP30110] ([ITEMNMBR], [REQDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4POP30110] ON [dbo].[POP30110] ([POLNESTA], [PONUMBER], [ORD], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6POP30110] ON [dbo].[POP30110] ([Product_Indicator], [JOBNUMBR], [COSTCODE], [PONUMBER], [ORD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3POP30110] ON [dbo].[POP30110] ([VNDITNUM], [PONUMBER], [ORD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[PONUMBER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[ORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[POLNESTA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[POTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[VNDITNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[VNDITDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[NONINVEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[UOFM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[UMQTYINB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[QTYORDER]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[QTYCANCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[UNITCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[EXTDCOST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[INVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[REQDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[PRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[PRMSHPDTE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[REQSTDBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[COMMNTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[POLNEARY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[DECPLCUR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[BRKFLD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[JOBNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[COSTCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[COSTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[ORUNTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[OREXTCST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[LINEORIGIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[FREEONBOARD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[ODECPLCU]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[Product_Indicator]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[Source_Document_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[Source_Document_Line_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[RELEASEBYDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[Released_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[Purchase_IV_Item_Taxable]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[Purchase_Site_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[PURCHSITETXSCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[BSIVCTTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[BCKTXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[POP30110].[OBTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[Landed_Cost_Group_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[LineNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[ORIGPRMDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[FSTRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[POP30110].[LSTRCPTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[RELEASE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[CMPNYNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[CONTACT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[ADDRSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[Flags]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[ProjNum]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[POP30110].[CostCatID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[POP30110].[Print_Phone_NumberGB]'
GO
GRANT SELECT ON  [dbo].[POP30110] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[POP30110] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[POP30110] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[POP30110] TO [DYNGRP]
GO

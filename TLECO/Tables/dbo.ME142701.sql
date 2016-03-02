CREATE TABLE [dbo].[ME142701]
(
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESRCDOC] [smallint] NOT NULL,
[MEADOCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[MEMCID] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Merchant_Name] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEASN] [int] NOT NULL,
[MEDOCTYPG] [smallint] NOT NULL,
[ME_CreditCard_Trx_Type] [smallint] NOT NULL,
[ME_Card_Type] [smallint] NOT NULL,
[MECCTRXT] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEDYNLN] [tinyint] NOT NULL,
[MEREQSTR1] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEREQSTR2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDHLDR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CARDNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MECCNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MEEXPDT] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[ME_Discount_Amount] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDADD1] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDADD2] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDCTY] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MESTATE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDZIP] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRDCNTRY] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[MEREQDT] [datetime] NOT NULL,
[MEREQTM] [datetime] NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Dummy_File_Conversion] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME142701] ADD CONSTRAINT [CK__ME142701__MEREQT__3F6A8E52] CHECK ((datepart(day,[MEREQTM])=(1) AND datepart(month,[MEREQTM])=(1) AND datepart(year,[MEREQTM])=(1900)))
GO
ALTER TABLE [dbo].[ME142701] ADD CONSTRAINT [CK__ME142701__MEREQD__3E766A19] CHECK ((datepart(hour,[MEREQDT])=(0) AND datepart(minute,[MEREQDT])=(0) AND datepart(second,[MEREQDT])=(0) AND datepart(millisecond,[MEREQDT])=(0)))
GO
ALTER TABLE [dbo].[ME142701] ADD CONSTRAINT [CK__ME142701__USERDA__405EB28B] CHECK ((datepart(hour,[USERDATE])=(0) AND datepart(minute,[USERDATE])=(0) AND datepart(second,[USERDATE])=(0) AND datepart(millisecond,[USERDATE])=(0)))
GO
ALTER TABLE [dbo].[ME142701] ADD CONSTRAINT [PKME142701] PRIMARY KEY CLUSTERED  ([BCHSOURC], [BACHNUMB], [MEADOCNUM], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ME142701] ON [dbo].[ME142701] ([MESRCDOC], [DOCTYPE], [MEADOCNUM], [MEASN], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[MESRCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MEADOCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MEMCID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[ME_Merchant_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[MEASN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[MEDOCTYPG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[ME_CreditCard_Trx_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[ME_Card_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MECCTRXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[MEDYNLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MEREQSTR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MEREQSTR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDHLDR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CARDNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MECCNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MEEXPDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142701].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142701].[ME_Discount_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME142701].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDADD1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDADD2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDCTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[MESTATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDZIP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CRDCNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142701].[MEREQDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142701].[MEREQTM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME142701].[USERDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME142701].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME142701].[ME_Dummy_File_Conversion]'
GO
GRANT SELECT ON  [dbo].[ME142701] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME142701] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME142701] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME142701] TO [DYNGRP]
GO

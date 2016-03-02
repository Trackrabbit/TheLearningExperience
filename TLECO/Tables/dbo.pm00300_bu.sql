CREATE TABLE [dbo].[pm00300_bu]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VNDCNTCT] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UPSZONE] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHNUMBR2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAXNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailPOs] [tinyint] NOT NULL,
[POEmailRecipient] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EmailPOFormat] [smallint] NOT NULL,
[FaxPOs] [tinyint] NOT NULL,
[POFaxNumber] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FaxPOFormat] [smallint] NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[VNDCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00300_bu].[EmailPOs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[POEmailRecipient]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00300_bu].[EmailPOFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00300_bu].[FaxPOs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[POFaxNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[pm00300_bu].[FaxPOFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[pm00300_bu].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[pm00300_bu].[DEX_ROW_TS]'
GO
GRANT SELECT ON  [dbo].[pm00300_bu] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[pm00300_bu] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[pm00300_bu] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[pm00300_bu] TO [DYNGRP]
GO

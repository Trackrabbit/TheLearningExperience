CREATE TABLE [dbo].[PM00300]
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
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__PM00300__DEX_ROW__4F3E6F99] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[taVendorAddressInsert] on [dbo].[PM00300] for insert, update as declare @iStatus  int declare @MASTERDB char(25) declare @VENDORID char(15) declare @ADRSCODE char(15) declare @VNDCNTCT char(31) declare @ADDRESS1 char(31) declare @ADDRESS2 char(31) declare @ADDRESS3 char(31) declare @CITY char(31) declare @STATE char(29) declare @ZIPCODE char(11) declare @COUNTRY char(21)  declare @UPSZONE char(3) declare @PHNUMBR1 char(15) declare @PHNUMBR2 char(15) declare @PHONE3 char(15) declare @FAXNUMBR char(21)  declare @SHIPMTHD char(15) declare @TAXSCHID char(15) declare @EmailPOs tinyint		 declare @POEmailRecipient char(81)	 declare @EmailPOFormat smallint		 declare @FaxPOs tinyint			 declare @POFaxNumber char(21)		 declare @FaxPOFormat smallint		 declare	@CCode char(6)			 declare	@DECLID char(15)		 select  @MASTERDB = DB_Name(), @VENDORID = VENDORID, @ADRSCODE = ADRSCODE, @VNDCNTCT = VNDCNTCT, @ADDRESS1 = ADDRESS1,  @ADDRESS2 = ADDRESS2, @ADDRESS3 = ADDRESS3, @CITY = CITY, @STATE = STATE, @ZIPCODE = ZIPCODE, @COUNTRY = COUNTRY, @UPSZONE = UPSZONE, @PHNUMBR1 = PHNUMBR1, @PHNUMBR2 = PHNUMBR2, @PHONE3 = PHONE3, @FAXNUMBR = FAXNUMBR, @SHIPMTHD = SHIPMTHD, @TAXSCHID = TAXSCHID, @EmailPOs = EmailPOs, 			 @POEmailRecipient = POEmailRecipient,	 @EmailPOFormat = EmailPOFormat, 	 @FaxPOs = FaxPOs,			 @POFaxNumber = POFaxNumber,		 @FaxPOFormat = FaxPOFormat,		 @CCode = CCode,				 @DECLID = DECLID			 from  inserted exec @iStatus = DYNAMICS.dbo.TA_ParentInsertAddressPM @MASTERDB, @VENDORID, @ADRSCODE, @VNDCNTCT, @ADDRESS1, @ADDRESS2, @ADDRESS3, @CITY, @STATE, @ZIPCODE, @COUNTRY, @UPSZONE, @PHNUMBR1, @PHNUMBR2, @PHONE3, @FAXNUMBR, @SHIPMTHD, @TAXSCHID, @EmailPOs, 				 @POEmailRecipient,			 @EmailPOFormat, 			 @FaxPOs,				 @POFaxNumber,				 @FaxPOFormat,				 @CCode,					 @DECLID					 
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_PM00300U] ON [dbo].[PM00300] AFTER UPDATE AS  set nocount on BEGIN UPDATE dbo.PM00300 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.PM00300, inserted WHERE PM00300.VENDORID = inserted.VENDORID AND PM00300.ADRSCODE = inserted.ADRSCODE END set nocount off    
GO
ALTER TABLE [dbo].[PM00300] ADD CONSTRAINT [PKPM00300] PRIMARY KEY NONCLUSTERED  ([VENDORID], [ADRSCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM00300] ON [dbo].[PM00300] ([VENDORID], [CITY], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM00300] ON [dbo].[PM00300] ([VENDORID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM00300] ON [dbo].[PM00300] ([VENDORID], [STATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM00300] ON [dbo].[PM00300] ([VENDORID], [ZIPCODE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[VNDCNTCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[UPSZONE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[PHNUMBR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[PHNUMBR2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[FAXNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00300].[EmailPOs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[POEmailRecipient]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00300].[EmailPOFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00300].[FaxPOs]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[POFaxNumber]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00300].[FaxPOFormat]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00300].[DECLID]'
GO
GRANT SELECT ON  [dbo].[PM00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00300] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM00300] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM00300] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM00300] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM00300] TO [RAPIDGRP]
GO

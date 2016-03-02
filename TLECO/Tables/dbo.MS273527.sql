CREATE TABLE [dbo].[MS273527]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardNumberPABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardExpDate] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardType] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Issue_Number] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Start_Date] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRSTNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MIDLNAME] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LASTNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMail] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC1_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC2_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC3_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DESC4_PABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT1] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT3] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT4] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_COMMENT5] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Check_Number] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ABA] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_AcctType] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Default_ACH] [tinyint] NOT NULL,
[MSO_DLicense] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ACCT] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_BankName] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_DateOfBirth] [datetime] NOT NULL,
[MSO_SSN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE TRIGGER MSO_Trigger_MSO_Credit_Card_Setup_IU ON TLECO.dbo.MS273527
 FOR INSERT, UPDATE AS
BEGIN 
	SELECT 0
	--update crd
  --   set ADRSCODE = ''
	--from TLECO.dbo.MS273527 crd
	--join inserted i on i.CUSTNMBR = crd.CUSTNMBR and i.ADRSCODE = crd.ADRSCODE and crd.MSO_CardName <> 'eCheck'
	--	where i.DEX_ROW_ID <> crd.DEX_ROW_ID 

END 
GO
ALTER TABLE [dbo].[MS273527] ADD CONSTRAINT [CK__MS273527__MSO_Da__55D8F25E] CHECK ((datepart(hour,[MSO_DateOfBirth])=(0) AND datepart(minute,[MSO_DateOfBirth])=(0) AND datepart(second,[MSO_DateOfBirth])=(0) AND datepart(millisecond,[MSO_DateOfBirth])=(0)))
GO
ALTER TABLE [dbo].[MS273527] ADD CONSTRAINT [PKMS273527] PRIMARY KEY CLUSTERED  ([CUSTNMBR], [MSO_CardNumberPABP], [MSO_CardExpDate]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_CardName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_CardNumberPABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_CardExpDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_CardType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_Issue_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_Start_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[FRSTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MIDLNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[LASTNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[EMail]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[PHONNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DESC_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DESC1_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DESC2_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DESC3_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DESC4_PABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_COMMENT1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_COMMENT2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_COMMENT3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_COMMENT4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_COMMENT5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_Check_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_ABA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_AcctType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273527].[MSO_Default_ACH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_DLicense]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_ACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_BankName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MS273527].[MSO_DateOfBirth]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273527].[MSO_SSN]'
GO
GRANT SELECT ON  [dbo].[MS273527] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273527] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273527] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273527] TO [DYNGRP]
GO

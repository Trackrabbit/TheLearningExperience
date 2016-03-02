CREATE TABLE [dbo].[ME27604]
(
[ME_Signature_ID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Signature_Line1] [smallint] NOT NULL,
[ME_Signature_Line2] [smallint] NOT NULL,
[ME_Signature1] [smallint] NOT NULL,
[ME_Signature2] [smallint] NOT NULL,
[ME_CB_Print_Without_Sign] [tinyint] NOT NULL,
[ME_CB_Print_Without_Sig2] [tinyint] NOT NULL,
[ME_Ask_Password1] [smallint] NOT NULL,
[ME_Ask_Password2] [smallint] NOT NULL,
[ME_Filename] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Filename2] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Scaling] [smallint] NOT NULL,
[ME_Scaling2] [smallint] NOT NULL,
[ME_Signature_Threshhold1] [numeric] (19, 5) NOT NULL,
[ME_Signature_Threshhold2] [numeric] (19, 5) NOT NULL,
[ME_Signature_Password1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Signature_Password2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Signature_Queryfile1] [tinyint] NOT NULL,
[ME_Signature_Queryfile2] [tinyint] NOT NULL,
[ME_Sort_Checks] [tinyint] NOT NULL,
[ME_Password1_Set_By_Whom] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Password1_Set_Date] [datetime] NOT NULL,
[ME_Password2_Set_By_Whom] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ME_Password2_Set_Date] [datetime] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ME27604] ADD CONSTRAINT [CK__ME27604__ME_Pass__35413A43] CHECK ((datepart(hour,[ME_Password1_Set_Date])=(0) AND datepart(minute,[ME_Password1_Set_Date])=(0) AND datepart(second,[ME_Password1_Set_Date])=(0) AND datepart(millisecond,[ME_Password1_Set_Date])=(0)))
GO
ALTER TABLE [dbo].[ME27604] ADD CONSTRAINT [CK__ME27604__ME_Pass__36355E7C] CHECK ((datepart(hour,[ME_Password2_Set_Date])=(0) AND datepart(minute,[ME_Password2_Set_Date])=(0) AND datepart(second,[ME_Password2_Set_Date])=(0) AND datepart(millisecond,[ME_Password2_Set_Date])=(0)))
GO
ALTER TABLE [dbo].[ME27604] ADD CONSTRAINT [PKME27604] PRIMARY KEY CLUSTERED  ([ME_Signature_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Signature_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature_Line1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature_Line2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_CB_Print_Without_Sign]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_CB_Print_Without_Sig2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Ask_Password1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Ask_Password2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Filename]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Filename2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Scaling]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Scaling2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27604].[ME_Signature_Threshhold1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27604].[ME_Signature_Threshhold2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Signature_Password1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Signature_Password2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature_Queryfile1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Signature_Queryfile2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ME27604].[ME_Sort_Checks]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Password1_Set_By_Whom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27604].[ME_Password1_Set_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ME27604].[ME_Password2_Set_By_Whom]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[ME27604].[ME_Password2_Set_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[ME27604].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[ME27604] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ME27604] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ME27604] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ME27604] TO [DYNGRP]
GO

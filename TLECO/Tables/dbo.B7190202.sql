CREATE TABLE [dbo].[B7190202]
(
[JRNENTRY] [int] NOT NULL,
[ORTRXSRC] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Audit_Trail_Seq_Num] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[ACTINDX] [int] NOT NULL,
[BSSI_Account_Number_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Account_Number_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Account_Number_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Account_Number_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_IsCredit] [tinyint] NOT NULL,
[BSSI_Recognition_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Description] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[VOIDED] [tinyint] NOT NULL,
[BSSI_Reverse_JE] [int] NOT NULL,
[BSSI_Recognition_SOrigin] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B7190202] ADD CONSTRAINT [CK__B7190202__DATE1__37831AB0] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B7190202] ADD CONSTRAINT [CK__B7190202__DOCDAT__368EF677] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B7190202] ADD CONSTRAINT [PKB7190202] PRIMARY KEY CLUSTERED  ([JRNENTRY], [ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B7190202] ON [dbo].[B7190202] ([BSSI_IsCredit], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[ORTRXSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190202].[BSSI_Audit_Trail_Seq_Num]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190202].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[BSSI_Account_Number_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[BSSI_Account_Number_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[BSSI_Account_Number_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[BSSI_Account_Number_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[BSSI_IsCredit]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B7190202].[BSSI_Recognition_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[BSSI_Description]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B7190202].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B7190202].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[VOIDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[BSSI_Reverse_JE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B7190202].[BSSI_Recognition_SOrigin]'
GO
GRANT SELECT ON  [dbo].[B7190202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B7190202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B7190202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B7190202] TO [DYNGRP]
GO

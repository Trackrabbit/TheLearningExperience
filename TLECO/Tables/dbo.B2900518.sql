CREATE TABLE [dbo].[B2900518]
(
[BSSI_DocID] [char] (33) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Lease_Loan_Number] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AssetID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_AssetSuffix] [smallint] NOT NULL,
[BSSI_AssetIndex] [int] NOT NULL,
[BSSI_DocDesc] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[Status] [smallint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900518] ADD CONSTRAINT [CK__B2900518__DATE1__4120C82C] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B2900518] ADD CONSTRAINT [PKB2900518] PRIMARY KEY NONCLUSTERED  ([BSSI_Lease_Loan_Number], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[BSSI_DocID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[BSSI_Lease_Loan_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900518].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[BSSI_AssetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900518].[BSSI_AssetSuffix]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900518].[BSSI_AssetIndex]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[BSSI_DocDesc]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900518].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900518].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900518].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2900518].[DATE1]'
GO
GRANT SELECT ON  [dbo].[B2900518] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900518] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900518] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900518] TO [DYNGRP]
GO

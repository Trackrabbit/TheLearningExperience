CREATE TABLE [dbo].[B2900514]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_ImportID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[DEDUCTON] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_DeductionPercentage] [smallint] NOT NULL,
[ERRDESCR] [char] (131) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2900514] ADD CONSTRAINT [PKB2900514] PRIMARY KEY CLUSTERED  ([USERID], [BSSI_ImportID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900514].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900514].[BSSI_ImportID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900514].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900514].[DEDUCTON]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B2900514].[BSSI_DeductionPercentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2900514].[ERRDESCR]'
GO
GRANT SELECT ON  [dbo].[B2900514] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2900514] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2900514] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2900514] TO [DYNGRP]
GO

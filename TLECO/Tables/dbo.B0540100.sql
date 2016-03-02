CREATE TABLE [dbo].[B0540100]
(
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_ID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNFN] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SPRSNSLN] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Offering_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MJW_Investor_Name] [char] (65) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKAMNT] [numeric] (19, 5) NOT NULL,
[MJW_Date_Accept] [datetime] NOT NULL,
[MJW_Distribution_Amount] [numeric] (19, 5) NOT NULL,
[BSSI_Dist_Status] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Investment_Amount] [numeric] (19, 5) NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0540100] ADD CONSTRAINT [CK__B0540100__MJW_Da__1D8D732C] CHECK ((datepart(hour,[MJW_Date_Accept])=(0) AND datepart(minute,[MJW_Date_Accept])=(0) AND datepart(second,[MJW_Date_Accept])=(0) AND datepart(millisecond,[MJW_Date_Accept])=(0)))
GO
ALTER TABLE [dbo].[B0540100] ADD CONSTRAINT [PKB0540100] PRIMARY KEY NONCLUSTERED  ([SLPRSNID], [MJW_Investor_ID], [MJW_Offering_ID], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[MJW_Investor_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[MJW_Offering_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B0540100].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[SLPRSNFN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[SPRSNSLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[MJW_Offering_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[MJW_Investor_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540100].[CHEKAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0540100].[MJW_Date_Accept]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540100].[MJW_Distribution_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[BSSI_Dist_Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B0540100].[BSSI_Investment_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0540100].[CHEKNMBR]'
GO
GRANT SELECT ON  [dbo].[B0540100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0540100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0540100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0540100] TO [DYNGRP]
GO

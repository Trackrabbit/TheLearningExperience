CREATE TABLE [dbo].[B4630502]
(
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[YEAR1] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VCHNUMWK] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4630502] ADD CONSTRAINT [CK__B4630502__DATE1__37CDFECA] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[B4630502] ADD CONSTRAINT [PKB4630502] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR], [SLPRSNID], [SALSTERR], [LNSEQNBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4630502] ON [dbo].[B4630502] ([DOCTYPE], [VCHNUMWK], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4630502] ON [dbo].[B4630502] ([VENDORID], [LOCNCODE], [BSSI_Ground_Lease_Number], [YEAR1], [PERIODID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4630502].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4630502].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4630502].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4630502].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4630502].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4630502].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4630502].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4630502].[VCHNUMWK]'
GO
GRANT SELECT ON  [dbo].[B4630502] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4630502] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4630502] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4630502] TO [DYNGRP]
GO

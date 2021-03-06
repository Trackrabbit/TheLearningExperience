CREATE TABLE [dbo].[B4602244]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SOP_LINE_Sequence] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602244] ADD CONSTRAINT [PKB4602244] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR], [SOPTYPE], [SOPNUMBE], [BSSI_SOP_LINE_Sequence]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602244] ON [dbo].[B4602244] ([BSSI_Tenant_Lease_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4B4602244] ON [dbo].[B4602244] ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR], [CUSTNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5B4602244] ON [dbo].[B4602244] ([SOPNUMBE], [SOPTYPE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602244] ON [dbo].[B4602244] ([SOPTYPE], [SOPNUMBE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602244].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602244].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602244].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602244].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602244].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602244].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602244].[BSSI_SOP_LINE_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602244].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602244].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4602244] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602244] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602244] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602244] TO [DYNGRP]
GO

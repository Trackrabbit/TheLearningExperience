CREATE TABLE [dbo].[B4602245]
(
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_SOP_LINE_Sequence] [int] NOT NULL,
[BSSI_Line_SL_Amount] [numeric] (19, 5) NOT NULL,
[MDFUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4602245] ADD CONSTRAINT [CK__B4602245__MODIFD__05EC8A73] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B4602245] ADD CONSTRAINT [PKB4602245] PRIMARY KEY NONCLUSTERED  ([BSSI_Tenant_Lease_Number], [LOCNCODE], [LNITMSEQ], [LNSEQNBR], [JRNENTRY]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3B4602245] ON [dbo].[B4602245] ([BSSI_Tenant_Lease_Number], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4602245] ON [dbo].[B4602245] ([SOPTYPE], [SOPNUMBE], [BSSI_SOP_LINE_Sequence], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602245].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602245].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602245].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602245].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602245].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602245].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602245].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602245].[BSSI_SOP_LINE_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4602245].[BSSI_Line_SL_Amount]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4602245].[MDFUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B4602245].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4602245].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4602245] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4602245] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4602245] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4602245] TO [DYNGRP]
GO

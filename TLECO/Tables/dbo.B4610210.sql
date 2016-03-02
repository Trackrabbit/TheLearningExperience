CREATE TABLE [dbo].[B4610210]
(
[SOPTYPE] [smallint] NOT NULL,
[SOPNUMBE] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Item_Sequence] [int] NOT NULL,
[BSSI_Master_Lease_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Ground_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[BSSI_Rev_Sharing_ID] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BSSI_Rev_Sharing_Type] [smallint] NOT NULL,
[BSSI_Tenant_Lease_Number] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SALSTERR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMAPACCT_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PMPRCHAC_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COMMAMNT] [numeric] (19, 5) NOT NULL,
[OCOMMAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[OXTNDPRC] [numeric] (19, 5) NOT NULL,
[COMPRCNT] [smallint] NOT NULL,
[BSSI_Dummy] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B4610210] ADD CONSTRAINT [PKB4610210] PRIMARY KEY NONCLUSTERED  ([SOPTYPE], [SOPNUMBE], [Item_Sequence], [BSSI_Rev_Sharing_ID], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2B4610210] ON [dbo].[B4610210] ([SOPNUMBE], [SOPTYPE], [Item_Sequence], [BSSI_Rev_Sharing_ID], [LNITMSEQ], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[SOPNUMBE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[Item_Sequence]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[BSSI_Master_Lease_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[BSSI_Ground_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[BSSI_Rev_Sharing_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[BSSI_Rev_Sharing_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[BSSI_Tenant_Lease_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[SALSTERR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMAPACCT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMAPACCT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMAPACCT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMAPACCT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMPRCHAC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMPRCHAC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMPRCHAC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B4610210].[PMPRCHAC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610210].[COMMAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610210].[OCOMMAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B4610210].[OXTNDPRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[COMPRCNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[B4610210].[BSSI_Dummy]'
GO
GRANT SELECT ON  [dbo].[B4610210] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B4610210] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B4610210] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B4610210] TO [DYNGRP]
GO

CREATE TABLE [dbo].[UPR00300]
(
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXMFRFED] [tinyint] NOT NULL,
[FDFLGSTS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FEDEXMPT] [smallint] NOT NULL,
[ADFDWHDG] [numeric] (19, 5) NOT NULL,
[ESTFEDWH] [numeric] (19, 5) NOT NULL,
[STATECD] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCALTAX] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[W2BF942E] [tinyint] NOT NULL,
[W2BFDCSD] [tinyint] NOT NULL,
[W2BFDCMP] [tinyint] NOT NULL,
[W2BFLREP] [tinyint] NOT NULL,
[W2BFPPLN] [tinyint] NOT NULL,
[W2BFSTEM] [tinyint] NOT NULL,
[MCRQGEMP] [tinyint] NOT NULL,
[EICFLGST] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NYTXDiff] [tinyint] NOT NULL,
[QualifiedHire] [tinyint] NOT NULL,
[MarriedWithholdAsSingle] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR00300] ADD CONSTRAINT [PKUPR00300] PRIMARY KEY NONCLUSTERED  ([EMPLOYID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00300].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00300].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[EXMFRFED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00300].[FDFLGSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[FEDEXMPT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00300].[ADFDWHDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR00300].[ESTFEDWH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00300].[STATECD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00300].[LOCALTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BF942E]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BFDCSD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BFDCMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BFLREP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BFPPLN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[W2BFSTEM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[MCRQGEMP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR00300].[EICFLGST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[NYTXDiff]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[QualifiedHire]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR00300].[MarriedWithholdAsSingle]'
GO
GRANT SELECT ON  [dbo].[UPR00300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR00300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR00300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR00300] TO [DYNGRP]
GO

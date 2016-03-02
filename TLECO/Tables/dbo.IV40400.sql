CREATE TABLE [dbo].[IV40400]
(
[ITMCLSCD] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITMCLSDC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEFLTCLS] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[ITEMTYPE] [smallint] NOT NULL,
[ITMTRKOP] [smallint] NOT NULL,
[LOTTYPE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[KPERHIST] [tinyint] NOT NULL,
[KPTRXHST] [tinyint] NOT NULL,
[KPCALHST] [tinyint] NOT NULL,
[KPDSTHST] [tinyint] NOT NULL,
[ALWBKORD] [tinyint] NOT NULL,
[ITMGEDSC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TAXOPTNS] [smallint] NOT NULL,
[ITMTSHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Purchase_Tax_Options] [smallint] NOT NULL,
[Purchase_Item_Tax_Schedu] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCTNMTHD] [smallint] NOT NULL,
[USCATVLS_1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_4] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_5] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USCATVLS_6] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[IVIVINDX] [int] NOT NULL,
[IVIVOFIX] [int] NOT NULL,
[IVCOGSIX] [int] NOT NULL,
[IVSLSIDX] [int] NOT NULL,
[IVSLDSIX] [int] NOT NULL,
[IVSLRNIX] [int] NOT NULL,
[IVINUSIX] [int] NOT NULL,
[IVINSVIX] [int] NOT NULL,
[IVDMGIDX] [int] NOT NULL,
[IVVARIDX] [int] NOT NULL,
[DPSHPIDX] [int] NOT NULL,
[PURPVIDX] [int] NOT NULL,
[UPPVIDX] [int] NOT NULL,
[IVRETIDX] [int] NOT NULL,
[ASMVRIDX] [int] NOT NULL,
[PRCLEVEL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PriceGroup] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRICMTHD] [smallint] NOT NULL,
[TCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Revalue_Inventory] [tinyint] NOT NULL,
[Tolerance_Percentage] [int] NOT NULL,
[CNTRYORGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTCLVLPRCNTG] [smallint] NOT NULL,
[INCLUDEINDP] [tinyint] NOT NULL,
[LOTEXPWARN] [tinyint] NOT NULL,
[LOTEXPWARNDAYS] [smallint] NOT NULL,
[UseQtyOverageTolerance] [tinyint] NOT NULL,
[UseQtyShortageTolerance] [tinyint] NOT NULL,
[QtyOverTolerancePercent] [int] NOT NULL,
[QtyShortTolerancePercent] [int] NOT NULL,
[IVSCRVIX] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV40400] ADD CONSTRAINT [PKIV40400] PRIMARY KEY NONCLUSTERED  ([ITMCLSCD]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3IV40400] ON [dbo].[IV40400] ([DEFLTCLS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV40400] ON [dbo].[IV40400] ([ITMCLSDC], [ITMCLSCD]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[ITMCLSCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[ITMCLSDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[DEFLTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV40400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[ITEMTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[ITMTRKOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[LOTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[KPERHIST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[KPTRXHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[KPCALHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[KPDSTHST]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[ALWBKORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[ITMGEDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[TAXOPTNS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[ITMTSHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[Purchase_Tax_Options]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[Purchase_Item_Tax_Schedu]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[VCTNMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[USCATVLS_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVIVINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVIVOFIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVCOGSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVSLSIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVSLDSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVSLRNIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVINUSIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVINSVIX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVDMGIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVVARIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[DPSHPIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[PURPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[UPPVIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVRETIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[ASMVRIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[PRCLEVEL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[PriceGroup]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[PRICMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[TCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[Revalue_Inventory]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[Tolerance_Percentage]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV40400].[CNTRYORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[STTSTCLVLPRCNTG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[INCLUDEINDP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[LOTEXPWARN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[LOTEXPWARNDAYS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[UseQtyOverageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[UseQtyShortageTolerance]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[QtyOverTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[QtyShortTolerancePercent]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV40400].[IVSCRVIX]'
GO
GRANT SELECT ON  [dbo].[IV40400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV40400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV40400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV40400] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[IV40400] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[IV40400] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[IV40400] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[IV40400] TO [RAPIDGRP]
GO

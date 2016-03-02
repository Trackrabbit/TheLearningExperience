CREATE TABLE [dbo].[VAT10302]
(
[SERIES] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQNCLINE] [numeric] (19, 5) NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CCode] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXRGNNUM] [char] (25) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TCC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NUMASS] [numeric] (19, 5) NOT NULL,
[QUANTITY] [numeric] (19, 5) NOT NULL,
[LMASS] [numeric] (19, 5) NOT NULL,
[TMCODE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRANSNATURE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPPUNITS] [numeric] (19, 5) NOT NULL,
[TRADREF] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GOODSVALUE] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[Reference_Date] [datetime] NOT NULL,
[POSTED] [tinyint] NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[ORGDSVAL] [numeric] (19, 5) NOT NULL,
[ORTAXAMT] [numeric] (19, 5) NOT NULL,
[CURRNIDX] [smallint] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRT] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRYORGN] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCDRRGM] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[INCTRMS] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTSTCLVL] [numeric] (19, 5) NOT NULL,
[ORGNTNGSTTSTCLVL] [numeric] (19, 5) NOT NULL,
[Included_On_Return] [tinyint] NOT NULL,
[INTRSTTRTRNID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DECLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOCNCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ARRDISP] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PERIOD] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[AUDITTRAIL] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[VAT10302] ADD CONSTRAINT [CK__VAT10302__DOCDAT__55808D7D] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[VAT10302] ADD CONSTRAINT [CK__VAT10302__Refere__5674B1B6] CHECK ((datepart(hour,[Reference_Date])=(0) AND datepart(minute,[Reference_Date])=(0) AND datepart(second,[Reference_Date])=(0) AND datepart(millisecond,[Reference_Date])=(0)))
GO
ALTER TABLE [dbo].[VAT10302] ADD CONSTRAINT [CK__VAT10302__Tax_Da__5768D5EF] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[VAT10302] ADD CONSTRAINT [PKVAT10302] PRIMARY KEY NONCLUSTERED  ([SERIES], [DOCTYPE], [DOCNUMBR], [SQNCLINE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2VAT10302] ON [dbo].[VAT10302] ([INTRSTTRTRNID], [Included_On_Return], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[SQNCLINE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[CCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[TXRGNNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[TCC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[NUMASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[QUANTITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[LMASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[TMCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[TRANSNATURE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[SUPPUNITS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[TRADREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[GOODSVALUE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[VAT10302].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[VAT10302].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[VAT10302].[Reference_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[POSTED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[ORGDSVAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[ORTAXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[CURRNIDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[PRT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[RGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[CNTRYORGN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[PRCDRRGM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[INCTRMS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[STTSTCLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[VAT10302].[ORGNTNGSTTSTCLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[VAT10302].[Included_On_Return]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[INTRSTTRTRNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[DECLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[LOCNCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[ARRDISP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[PERIOD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[VAT10302].[AUDITTRAIL]'
GO
GRANT SELECT ON  [dbo].[VAT10302] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[VAT10302] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[VAT10302] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[VAT10302] TO [DYNGRP]
GO

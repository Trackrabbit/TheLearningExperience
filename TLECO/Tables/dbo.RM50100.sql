CREATE TABLE [dbo].[RM50100]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CPRCSTNM] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BACHNUMB] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[POSTDATE] [datetime] NOT NULL,
[PSTUSRID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[GLPOSTDT] [datetime] NOT NULL,
[LSTEDTDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ORTRXAMT] [numeric] (19, 5) NOT NULL,
[CURTRXAM] [numeric] (19, 5) NOT NULL,
[SLSAMNT] [numeric] (19, 5) NOT NULL,
[COSTAMNT] [numeric] (19, 5) NOT NULL,
[FRTAMNT] [numeric] (19, 5) NOT NULL,
[MISCAMNT] [numeric] (19, 5) NOT NULL,
[TAXAMNT] [numeric] (19, 5) NOT NULL,
[COMDLRAM] [numeric] (19, 5) NOT NULL,
[CASHAMNT] [numeric] (19, 5) NOT NULL,
[DISTKNAM] [numeric] (19, 5) NOT NULL,
[DISAVAMT] [numeric] (19, 5) NOT NULL,
[DISCRTND] [numeric] (19, 5) NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[DSCDLRAM] [numeric] (19, 5) NOT NULL,
[DSCPCTAM] [smallint] NOT NULL,
[WROFAMNT] [numeric] (19, 5) NOT NULL,
[TRXDSCRN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSPORNBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLPRSNID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSTERCD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DINVPDOF] [datetime] NOT NULL,
[PPSAMDED] [numeric] (19, 5) NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[DELETE1] [tinyint] NOT NULL,
[TAXSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SLSCHDID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FRTSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSCSCHID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CURNCYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SHIPMTHD] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PYMTRMID] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRDISAMT] [numeric] (19, 5) NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[VOIDSTTS] [smallint] NOT NULL,
[VOIDDATE] [datetime] NOT NULL,
[BALFWDNM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CSHRCTYP] [smallint] NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[APLYWITH] [tinyint] NOT NULL,
[SALEDATE] [datetime] NOT NULL,
[CORRCTN] [tinyint] NOT NULL,
[SIMPLIFD] [tinyint] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRCSSQNC] [smallint] NOT NULL,
[Status] [smallint] NOT NULL,
[STR1] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__DINVPDO__13C7D8B9] CHECK ((datepart(hour,[DINVPDOF])=(0) AND datepart(minute,[DINVPDOF])=(0) AND datepart(second,[DINVPDOF])=(0) AND datepart(millisecond,[DINVPDOF])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__DISCDAT__14BBFCF2] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__DOCDATE__15B0212B] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__DUEDATE__16A44564] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__GLPOSTD__1798699D] CHECK ((datepart(hour,[GLPOSTDT])=(0) AND datepart(minute,[GLPOSTDT])=(0) AND datepart(second,[GLPOSTDT])=(0) AND datepart(millisecond,[GLPOSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__LSTEDTD__188C8DD6] CHECK ((datepart(hour,[LSTEDTDT])=(0) AND datepart(minute,[LSTEDTDT])=(0) AND datepart(second,[LSTEDTDT])=(0) AND datepart(millisecond,[LSTEDTDT])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__POSTDAT__1980B20F] CHECK ((datepart(hour,[POSTDATE])=(0) AND datepart(minute,[POSTDATE])=(0) AND datepart(second,[POSTDATE])=(0) AND datepart(millisecond,[POSTDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__SALEDAT__1A74D648] CHECK ((datepart(hour,[SALEDATE])=(0) AND datepart(minute,[SALEDATE])=(0) AND datepart(second,[SALEDATE])=(0) AND datepart(millisecond,[SALEDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__Tax_Dat__1B68FA81] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [CK__RM50100__VOIDDAT__1C5D1EBA] CHECK ((datepart(hour,[VOIDDATE])=(0) AND datepart(minute,[VOIDDATE])=(0) AND datepart(second,[VOIDDATE])=(0) AND datepart(millisecond,[VOIDDATE])=(0)))
GO
ALTER TABLE [dbo].[RM50100] ADD CONSTRAINT [PKRM50100] PRIMARY KEY NONCLUSTERED  ([USERID], [PRCSSQNC], [Status], [CUSTNMBR], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[CPRCSTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[BACHNUMB]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[POSTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[PSTUSRID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[GLPOSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[LSTEDTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[ORTRXAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[CURTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[SLSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[COSTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[FRTAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[MISCAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[TAXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[COMDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[CASHAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[DISTKNAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[DISAVAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[DISCRTND]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[DSCDLRAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[DSCPCTAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[WROFAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[TRXDSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[CSPORNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[SLPRSNID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[SLSTERCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[DINVPDOF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[PPSAMDED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[GSTDSAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[DELETE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[TAXSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[SLSCHDID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[FRTSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[MSCSCHID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[CURNCYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[SHIPMTHD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[PYMTRMID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[TRDISAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM50100].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[VOIDSTTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[VOIDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[BALFWDNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[CSHRCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[APLYWITH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM50100].[SALEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[CORRCTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[SIMPLIFD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[PRCSSQNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM50100].[Status]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM50100].[STR1]'
GO
GRANT SELECT ON  [dbo].[RM50100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM50100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM50100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM50100] TO [DYNGRP]
GO

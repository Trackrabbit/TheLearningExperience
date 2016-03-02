CREATE TABLE [dbo].[RM00103]
(
[TNSFCLIF] [numeric] (19, 5) NOT NULL,
[NONSFLIF] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTBLNC] [numeric] (19, 5) NOT NULL,
[AGPERAMT_1] [numeric] (19, 5) NOT NULL,
[AGPERAMT_2] [numeric] (19, 5) NOT NULL,
[AGPERAMT_3] [numeric] (19, 5) NOT NULL,
[AGPERAMT_4] [numeric] (19, 5) NOT NULL,
[AGPERAMT_5] [numeric] (19, 5) NOT NULL,
[AGPERAMT_6] [numeric] (19, 5) NOT NULL,
[AGPERAMT_7] [numeric] (19, 5) NOT NULL,
[LASTAGED] [datetime] NOT NULL,
[FRSTINDT] [datetime] NOT NULL,
[LSTNSFCD] [datetime] NOT NULL,
[LPYMTAMT] [numeric] (19, 5) NOT NULL,
[LASTPYDT] [datetime] NOT NULL,
[LSTTRXDT] [datetime] NOT NULL,
[LSTTRXAM] [numeric] (19, 5) NOT NULL,
[LSTFCHAM] [numeric] (19, 5) NOT NULL,
[UPFCHYTD] [numeric] (19, 5) NOT NULL,
[AVDTPLYR] [smallint] NOT NULL,
[AVDTPLIF] [smallint] NOT NULL,
[AVGDTPYR] [smallint] NOT NULL,
[NUMADTPL] [int] NOT NULL,
[NUMADTPY] [int] NOT NULL,
[NUMADTPR] [int] NOT NULL,
[TDTKNYTD] [numeric] (19, 5) NOT NULL,
[TDTKNLYR] [numeric] (19, 5) NOT NULL,
[TDTKNLTD] [numeric] (19, 5) NOT NULL,
[TDISAYTD] [numeric] (19, 5) NOT NULL,
[RETAINAG] [numeric] (19, 5) NOT NULL,
[TNSFCYTD] [numeric] (19, 5) NOT NULL,
[NONSFYTD] [int] NOT NULL,
[UNPSTDSA] [numeric] (19, 5) NOT NULL,
[UNPSTDCA] [numeric] (19, 5) NOT NULL,
[UNPSTOSA] [numeric] (19, 5) NOT NULL,
[UNPSTOCA] [numeric] (19, 5) NOT NULL,
[NCSCHPMT] [numeric] (19, 5) NOT NULL,
[TTLSLYTD] [numeric] (19, 5) NOT NULL,
[TTLSLLTD] [numeric] (19, 5) NOT NULL,
[TTLSLLYR] [numeric] (19, 5) NOT NULL,
[TCOSTYTD] [numeric] (19, 5) NOT NULL,
[TCOSTLTD] [numeric] (19, 5) NOT NULL,
[TCOSTLYR] [numeric] (19, 5) NOT NULL,
[TCSHRYTD] [numeric] (19, 5) NOT NULL,
[TCSHRLTD] [numeric] (19, 5) NOT NULL,
[TCSHRLYR] [numeric] (19, 5) NOT NULL,
[TFNCHYTD] [numeric] (19, 5) NOT NULL,
[TFNCHLTD] [numeric] (19, 5) NOT NULL,
[TFNCHLYR] [numeric] (19, 5) NOT NULL,
[FNCHCYTD] [numeric] (19, 5) NOT NULL,
[FNCHLYRC] [numeric] (19, 5) NOT NULL,
[TBDDTYTD] [numeric] (19, 5) NOT NULL,
[TBDDTLYR] [numeric] (19, 5) NOT NULL,
[TBDDTLTD] [numeric] (19, 5) NOT NULL,
[TWVFCYTD] [numeric] (19, 5) NOT NULL,
[TWVFCLTD] [numeric] (19, 5) NOT NULL,
[TWVFCLYR] [numeric] (19, 5) NOT NULL,
[TWROFYTD] [numeric] (19, 5) NOT NULL,
[TWROFLTD] [numeric] (19, 5) NOT NULL,
[TWROFLYR] [numeric] (19, 5) NOT NULL,
[TTLINYTD] [int] NOT NULL,
[TTLINLTD] [int] NOT NULL,
[TTLINLYR] [int] NOT NULL,
[TTLFCYTD] [int] NOT NULL,
[TTLFCLTD] [int] NOT NULL,
[TTLFCLYR] [int] NOT NULL,
[WROFSLIF] [numeric] (19, 5) NOT NULL,
[WROFSLYR] [numeric] (19, 5) NOT NULL,
[WROFSYTD] [numeric] (19, 5) NOT NULL,
[HIBALLYR] [numeric] (19, 5) NOT NULL,
[HIBALYTD] [numeric] (19, 5) NOT NULL,
[HIBALLTD] [numeric] (19, 5) NOT NULL,
[LASTSTDT] [datetime] NOT NULL,
[LSTSTAMT] [numeric] (19, 5) NOT NULL,
[DEPRECV] [numeric] (19, 5) NOT NULL,
[ONORDAMT] [numeric] (19, 5) NOT NULL,
[TTLRTYTD] [numeric] (19, 5) NOT NULL,
[TTLRTLTD] [numeric] (19, 5) NOT NULL,
[TTLRTLYR] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__FRSTIND__5E94F66B] CHECK ((datepart(hour,[FRSTINDT])=(0) AND datepart(minute,[FRSTINDT])=(0) AND datepart(second,[FRSTINDT])=(0) AND datepart(millisecond,[FRSTINDT])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__LASTAGE__5F891AA4] CHECK ((datepart(hour,[LASTAGED])=(0) AND datepart(minute,[LASTAGED])=(0) AND datepart(second,[LASTAGED])=(0) AND datepart(millisecond,[LASTAGED])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__LASTPYD__607D3EDD] CHECK ((datepart(hour,[LASTPYDT])=(0) AND datepart(minute,[LASTPYDT])=(0) AND datepart(second,[LASTPYDT])=(0) AND datepart(millisecond,[LASTPYDT])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__LASTSTD__61716316] CHECK ((datepart(hour,[LASTSTDT])=(0) AND datepart(minute,[LASTSTDT])=(0) AND datepart(second,[LASTSTDT])=(0) AND datepart(millisecond,[LASTSTDT])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__LSTNSFC__6265874F] CHECK ((datepart(hour,[LSTNSFCD])=(0) AND datepart(minute,[LSTNSFCD])=(0) AND datepart(second,[LSTNSFCD])=(0) AND datepart(millisecond,[LSTNSFCD])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [CK__RM00103__LSTTRXD__6359AB88] CHECK ((datepart(hour,[LSTTRXDT])=(0) AND datepart(minute,[LSTTRXDT])=(0) AND datepart(second,[LSTTRXDT])=(0) AND datepart(millisecond,[LSTTRXDT])=(0)))
GO
ALTER TABLE [dbo].[RM00103] ADD CONSTRAINT [PKRM00103] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TNSFCLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[NONSFLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00103].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[CUSTBLNC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[AGPERAMT_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[LASTAGED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[FRSTINDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[LSTNSFCD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[LPYMTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[LASTPYDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[LSTTRXDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[LSTTRXAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[LSTFCHAM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[UPFCHYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[AVDTPLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[AVDTPLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[AVGDTPYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[NUMADTPL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[NUMADTPY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[NUMADTPR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TDTKNYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TDTKNLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TDTKNLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TDISAYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[RETAINAG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TNSFCYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[NONSFYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[UNPSTDSA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[UNPSTDCA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[UNPSTOSA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[UNPSTOCA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[NCSCHPMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLSLYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLSLLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLSLLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCOSTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCOSTLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCOSTLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCSHRYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCSHRLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TCSHRLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TFNCHYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TFNCHLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TFNCHLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[FNCHCYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[FNCHLYRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TBDDTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TBDDTLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TBDDTLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWVFCYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWVFCLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWVFCLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWROFYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWROFLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TWROFLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLINYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLINLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLINLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLFCYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLFCLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00103].[TTLFCLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[WROFSLIF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[WROFSLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[WROFSYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[HIBALLYR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[HIBALYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[HIBALLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00103].[LASTSTDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[LSTSTAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[DEPRECV]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[ONORDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLRTYTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLRTLTD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[RM00103].[TTLRTLYR]'
GO
GRANT SELECT ON  [dbo].[RM00103] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00103] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00103] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00103] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00103] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00103] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00103] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00103] TO [RAPIDGRP]
GO

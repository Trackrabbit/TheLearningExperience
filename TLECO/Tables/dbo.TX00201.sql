CREATE TABLE [dbo].[TX00201]
(
[TAXDTLID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLDSC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLTYP] [smallint] NOT NULL,
[ACTINDX] [int] NOT NULL,
[TXIDNMBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDTLBSE] [smallint] NOT NULL,
[TXDTLPCT] [numeric] (19, 5) NOT NULL,
[TXDTLAMT] [numeric] (19, 5) NOT NULL,
[TDTLRNDG] [smallint] NOT NULL,
[TXDBODTL] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TDTABMIN] [numeric] (19, 5) NOT NULL,
[TDTABMAX] [numeric] (19, 5) NOT NULL,
[TDTAXMIN] [numeric] (19, 5) NOT NULL,
[TDTAXMAX] [numeric] (19, 5) NOT NULL,
[TDRNGTYP] [smallint] NOT NULL,
[TXDTQUAL] [smallint] NOT NULL,
[TDTAXTAX] [tinyint] NOT NULL,
[TXDTLPDC] [tinyint] NOT NULL,
[TXDTLPCH] [char] (1) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXDXDISC] [tinyint] NOT NULL,
[CMNYTXID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[NAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTCPRSN] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS1] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS2] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESS3] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CITY] [char] (35) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STATE] [char] (29) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ZIPCODE] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[COUNTRY] [char] (61) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PHONE3] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[FAX] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TXUSRDF2] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VATREGTX] [tinyint] NOT NULL,
[TaxInvReqd] [tinyint] NOT NULL,
[TaxPostToAcct] [smallint] NOT NULL,
[TaxBoxes] [binary] (4) NOT NULL,
[IGNRGRSSAMNT] [tinyint] NOT NULL,
[TDTABPCT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[TX00201] ADD CONSTRAINT [PKTX00201] PRIMARY KEY NONCLUSTERED  ([TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2TX00201] ON [dbo].[TX00201] ([TXDTLDSC], [TAXDTLID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3TX00201] ON [dbo].[TX00201] ([TXDTLTYP], [TAXDTLID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TAXDTLID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXDTLDSC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TXDTLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXIDNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TXDTLBSE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TXDTLPCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TXDTLAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TDTLRNDG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXDBODTL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TDTABMIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TDTABMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TDTAXMIN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TDTAXMAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TDRNGTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TXDTQUAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TDTAXTAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TXDTLPDC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXDTLPCH]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TXDXDISC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[CMNYTXID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[NAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[CNTCPRSN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[ADDRESS1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[ADDRESS2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[ADDRESS3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[CITY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[STATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[ZIPCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[COUNTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[PHONE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[PHONE2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[PHONE3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[FAX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[TX00201].[TXUSRDF2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[VATREGTX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TaxInvReqd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TaxPostToAcct]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[TaxBoxes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[TX00201].[IGNRGRSSAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[TX00201].[TDTABPCT]'
GO
GRANT SELECT ON  [dbo].[TX00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[TX00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[TX00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[TX00201] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[TX00201] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[TX00201] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[TX00201] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[TX00201] TO [RAPIDGRP]
GO

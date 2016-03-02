CREATE TABLE [dbo].[MC10000]
(
[RVLUEID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RVLSRIES] [smallint] NOT NULL,
[RVLUOPTN] [smallint] NOT NULL,
[GAINLOSS] [smallint] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[REVSETRX] [tinyint] NOT NULL,
[RVRSNGDT] [datetime] NOT NULL,
[RVLUYROP] [smallint] NOT NULL,
[YEAR1] [smallint] NOT NULL,
[RVLUPDOP] [smallint] NOT NULL,
[PERIODID] [smallint] NOT NULL,
[RVLURTOP] [smallint] NOT NULL,
[SORTBY] [smallint] NOT NULL,
[INCLDPAR] [tinyint] NOT NULL,
[Include_Invoice] [tinyint] NOT NULL,
[Include_Debit_Memo] [tinyint] NOT NULL,
[Include_Finance_Charge] [tinyint] NOT NULL,
[Include_ServiceRepair] [tinyint] NOT NULL,
[Include_Credit_Memo] [tinyint] NOT NULL,
[Include_Return] [tinyint] NOT NULL,
[Include_Cash_Receipt] [tinyint] NOT NULL,
[Include_Misc_Charge] [tinyint] NOT NULL,
[Include_Payment] [tinyint] NOT NULL,
[STTACNUM_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTACNUM_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EACCNBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENDCLSID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STTUDEF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENUSRDF1] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[StartCustOrVendID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EndCustOrVendID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUTOFDAT] [datetime] NOT NULL,
[MCRVALHDRMSGS] [binary] (4) NOT NULL,
[Limit_Document_Gains] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MC10000] ADD CONSTRAINT [CK__MC10000__CUTOFDA__62003705] CHECK ((datepart(hour,[CUTOFDAT])=(0) AND datepart(minute,[CUTOFDAT])=(0) AND datepart(second,[CUTOFDAT])=(0) AND datepart(millisecond,[CUTOFDAT])=(0)))
GO
ALTER TABLE [dbo].[MC10000] ADD CONSTRAINT [CK__MC10000__RVRSNGD__610C12CC] CHECK ((datepart(hour,[RVRSNGDT])=(0) AND datepart(minute,[RVRSNGDT])=(0) AND datepart(second,[RVRSNGDT])=(0) AND datepart(millisecond,[RVRSNGDT])=(0)))
GO
ALTER TABLE [dbo].[MC10000] ADD CONSTRAINT [CK__MC10000__TRXDATE__6017EE93] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[MC10000] ADD CONSTRAINT [PKMC10000] PRIMARY KEY NONCLUSTERED  ([RVLUEID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[RVLUEID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[RVLSRIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[RVLUOPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[GAINLOSS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10000].[TRXDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[REVSETRX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10000].[RVRSNGDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[RVLUYROP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[YEAR1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[RVLUPDOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[PERIODID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[RVLURTOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[SORTBY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[INCLDPAR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Invoice]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Debit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Finance_Charge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_ServiceRepair]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Credit_Memo]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Return]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Cash_Receipt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Misc_Charge]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Include_Payment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTACNUM_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTACNUM_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTACNUM_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTACNUM_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[EACCNBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[EACCNBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[EACCNBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[EACCNBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[ENDCLSID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[STTUDEF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[ENUSRDF1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[StartCustOrVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MC10000].[EndCustOrVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[MC10000].[CUTOFDAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[MCRVALHDRMSGS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MC10000].[Limit_Document_Gains]'
GO
GRANT REFERENCES ON  [dbo].[MC10000] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[MC10000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MC10000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MC10000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MC10000] TO [DYNGRP]
GO

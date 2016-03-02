CREATE TABLE [dbo].[DO10100]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[PAYMENTSERVICEREF] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DATE1] [datetime] NOT NULL,
[PAYMENTSERVICEOP] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[PAYMENTSERVICESSTATUS] [smallint] NOT NULL,
[PAYMENTSERVICESSOURCE] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[doAUTHCODE] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ERMSGTXT] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADDRESSRESULT] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO10100] ADD CONSTRAINT [CK__DO10100__DATE1__2FA5C8AF] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[DO10100] ADD CONSTRAINT [PKDO10100] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [DOCNUMBR], [SOPTYPE], [RMDTYPAL], [SEQNUMBR], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[PAYMENTSERVICEREF]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DO10100].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[PAYMENTSERVICEOP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[DO10100].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10100].[PAYMENTSERVICESSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[PAYMENTSERVICESSOURCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[doAUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[ERMSGTXT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10100].[ADDRESSRESULT]'
GO
GRANT SELECT ON  [dbo].[DO10100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DO10100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DO10100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DO10100] TO [DYNGRP]
GO

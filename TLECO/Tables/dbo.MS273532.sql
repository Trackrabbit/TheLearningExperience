CREATE TABLE [dbo].[MS273532]
(
[MSO_Doc_Number] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[MSO_EngineGUID] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_Tender] [int] NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardName] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardNumberPABP] [char] (165) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_CardExpDate] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ABA] [char] (27) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MSO_ACCT] [char] (19) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CRCRDAMT] [numeric] (19, 5) NOT NULL,
[PRCNTOFTTL] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MS273532] ADD CONSTRAINT [PKMS273532] PRIMARY KEY NONCLUSTERED  ([MSO_Doc_Number], [SEQNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_Doc_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273532].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_EngineGUID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[MS273532].[MSO_Tender]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_CardName]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_CardNumberPABP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_CardExpDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_ABA]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[MS273532].[MSO_ACCT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273532].[CRCRDAMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[MS273532].[PRCNTOFTTL]'
GO
GRANT SELECT ON  [dbo].[MS273532] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[MS273532] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[MS273532] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[MS273532] TO [DYNGRP]
GO

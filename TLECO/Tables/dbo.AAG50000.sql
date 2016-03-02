CREATE TABLE [dbo].[AAG50000]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXBTCHSRC] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSubLedgerHdrID] [int] NOT NULL,
[SERIES] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PSTGDATE] [datetime] NOT NULL,
[aaOrder] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG50000] ADD CONSTRAINT [CK__AAG50000__PSTGDA__644E9B18] CHECK ((datepart(hour,[PSTGDATE])=(0) AND datepart(minute,[PSTGDATE])=(0) AND datepart(second,[PSTGDATE])=(0) AND datepart(millisecond,[PSTGDATE])=(0)))
GO
ALTER TABLE [dbo].[AAG50000] ADD CONSTRAINT [PKAAG50000] PRIMARY KEY NONCLUSTERED  ([aaSubLedgerHdrID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG50000] ON [dbo].[AAG50000] ([USERID], [TRXBTCHSRC], [aaSubLedgerHdrID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50000].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50000].[TRXBTCHSRC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50000].[aaSubLedgerHdrID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50000].[SERIES]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50000].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG50000].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG50000].[PSTGDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG50000].[aaOrder]'
GO
GRANT SELECT ON  [dbo].[AAG50000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG50000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG50000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG50000] TO [DYNGRP]
GO

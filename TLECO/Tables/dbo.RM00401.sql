CREATE TABLE [dbo].[RM00401]
(
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[NEGQTYSOPINV] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RM00401] ADD CONSTRAINT [CK__RM00401__DOCDATE__7FF5EA36] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[RM00401] ADD CONSTRAINT [PKRM00401] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2RM00401] ON [dbo].[RM00401] ([CUSTNMBR], [CHEKNMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3RM00401] ON [dbo].[RM00401] ([CUSTNMBR], [DCSTATUS], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4RM00401] ON [dbo].[RM00401] ([DOCDATE], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5RM00401] ON [dbo].[RM00401] ([TRXSORCE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00401].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00401].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00401].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00401].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00401].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00401].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[RM00401].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[RM00401].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[RM00401].[NEGQTYSOPINV]'
GO
GRANT SELECT ON  [dbo].[RM00401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[RM00401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[RM00401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[RM00401] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[RM00401] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[RM00401] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[RM00401] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[RM00401] TO [RAPIDGRP]
GO

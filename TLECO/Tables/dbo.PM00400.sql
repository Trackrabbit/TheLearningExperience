CREATE TABLE [dbo].[PM00400]
(
[CNTRLNUM] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CNTRLTYP] [smallint] NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TRXSORCE] [char] (13) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKBKID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DUEDATE] [datetime] NOT NULL,
[DISCDATE] [datetime] NOT NULL,
[BCHSOURC] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM00400] ADD CONSTRAINT [CK__PM00400__DISCDAT__25077354] CHECK ((datepart(hour,[DISCDATE])=(0) AND datepart(minute,[DISCDATE])=(0) AND datepart(second,[DISCDATE])=(0) AND datepart(millisecond,[DISCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM00400] ADD CONSTRAINT [CK__PM00400__DOCDATE__25FB978D] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[PM00400] ADD CONSTRAINT [CK__PM00400__DUEDATE__26EFBBC6] CHECK ((datepart(hour,[DUEDATE])=(0) AND datepart(minute,[DUEDATE])=(0) AND datepart(second,[DUEDATE])=(0) AND datepart(millisecond,[DUEDATE])=(0)))
GO
ALTER TABLE [dbo].[PM00400] ADD CONSTRAINT [PKPM00400] PRIMARY KEY NONCLUSTERED  ([CNTRLTYP], [CNTRLNUM]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8PM00400] ON [dbo].[PM00400] ([DCSTATUS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3PM00400] ON [dbo].[PM00400] ([DOCNUMBR], [CHEKBKID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PM00400] ON [dbo].[PM00400] ([DOCTYPE], [VENDORID], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6PM00400] ON [dbo].[PM00400] ([TRXSORCE], [CNTRLNUM], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5PM00400] ON [dbo].[PM00400] ([VENDORID], [DCSTATUS], [DOCDATE], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4PM00400] ON [dbo].[PM00400] ([VENDORID], [DCSTATUS], [DOCNUMBR], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7PM00400] ON [dbo].[PM00400] ([VENDORID], [DCSTATUS], [DOCTYPE], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[CNTRLNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00400].[CNTRLTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00400].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM00400].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[TRXSORCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[CHEKBKID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00400].[DUEDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00400].[DISCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[BCHSOURC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM00400].[DOCDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM00400].[USERID]'
GO
GRANT SELECT ON  [dbo].[PM00400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM00400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM00400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM00400] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[PM00400] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[PM00400] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[PM00400] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[PM00400] TO [RAPIDGRP]
GO
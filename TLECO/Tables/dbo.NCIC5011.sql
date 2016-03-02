CREATE TABLE [dbo].[NCIC5011]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JRNENTRY] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[ACTINDX] [int] NOT NULL,
[NC_IC_Account_Type] [smallint] NOT NULL,
[TRXAMNT] [numeric] (19, 5) NOT NULL,
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[REFRENCE] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DCSTATUS] [smallint] NOT NULL,
[TRXDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[NCIC5011] ADD CONSTRAINT [CK__NCIC5011__TRXDAT__6F7763EC] CHECK ((datepart(hour,[TRXDATE])=(0) AND datepart(minute,[TRXDATE])=(0) AND datepart(second,[TRXDATE])=(0) AND datepart(millisecond,[TRXDATE])=(0)))
GO
ALTER TABLE [dbo].[NCIC5011] ADD CONSTRAINT [PKNCIC5011] PRIMARY KEY NONCLUSTERED  ([DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK1NCIC5011] ON [dbo].[NCIC5011] ([USERID], [JRNENTRY], [SEQNUMBR], [ACTINDX], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5011].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5011].[JRNENTRY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5011].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5011].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5011].[NC_IC_Account_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[NCIC5011].[TRXAMNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5011].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[NCIC5011].[REFRENCE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[NCIC5011].[DCSTATUS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[NCIC5011].[TRXDATE]'
GO
GRANT REFERENCES ON  [dbo].[NCIC5011] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5011] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[NCIC5011] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[NCIC5011] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[NCIC5011] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[NCIC5011] TO [public]
GO
GRANT INSERT ON  [dbo].[NCIC5011] TO [public]
GO
GRANT DELETE ON  [dbo].[NCIC5011] TO [public]
GO
GRANT UPDATE ON  [dbo].[NCIC5011] TO [public]
GO

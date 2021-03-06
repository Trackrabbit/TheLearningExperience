CREATE TABLE [dbo].[B0510310]
(
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHEKNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCDATE] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B0510310] ADD CONSTRAINT [CK__B0510310__DOCDAT__5705E7AA] CHECK ((datepart(hour,[DOCDATE])=(0) AND datepart(minute,[DOCDATE])=(0) AND datepart(second,[DOCDATE])=(0) AND datepart(millisecond,[DOCDATE])=(0)))
GO
ALTER TABLE [dbo].[B0510310] ADD CONSTRAINT [PKB0510310] PRIMARY KEY CLUSTERED  ([VCHRNMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510310].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B0510310].[CHEKNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B0510310].[DOCDATE]'
GO
GRANT SELECT ON  [dbo].[B0510310] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B0510310] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B0510310] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B0510310] TO [DYNGRP]
GO

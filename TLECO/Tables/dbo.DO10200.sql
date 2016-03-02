CREATE TABLE [dbo].[DO10200]
(
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[doAUTHCODE] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROCESSELECTRONICALLY] [tinyint] NOT NULL,
[NextElectronicNumber] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO10200] ADD CONSTRAINT [CK__DO10200__EXPNDAT__346A7DCC] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[DO10200] ADD CONSTRAINT [PKDO10200] PRIMARY KEY NONCLUSTERED  ([RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10200].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10200].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DO10200].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO10200].[doAUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10200].[PROCESSELECTRONICALLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO10200].[NextElectronicNumber]'
GO
GRANT SELECT ON  [dbo].[DO10200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DO10200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DO10200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DO10200] TO [DYNGRP]
GO

CREATE TABLE [dbo].[DO30100]
(
[CUSTNMBR] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[RMDTYPAL] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EXPNDATE] [datetime] NOT NULL,
[doAUTHCODE] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PROCESSELECTRONICALLY] [tinyint] NOT NULL,
[NextElectronicNumber] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DO30100] ADD CONSTRAINT [CK__DO30100__EXPNDAT__3A235722] CHECK ((datepart(hour,[EXPNDATE])=(0) AND datepart(minute,[EXPNDATE])=(0) AND datepart(second,[EXPNDATE])=(0) AND datepart(millisecond,[EXPNDATE])=(0)))
GO
ALTER TABLE [dbo].[DO30100] ADD CONSTRAINT [PKDO30100] PRIMARY KEY NONCLUSTERED  ([CUSTNMBR], [RMDTYPAL], [DOCNUMBR]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO30100].[CUSTNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO30100].[RMDTYPAL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO30100].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DO30100].[EXPNDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[DO30100].[doAUTHCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO30100].[PROCESSELECTRONICALLY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DO30100].[NextElectronicNumber]'
GO
GRANT SELECT ON  [dbo].[DO30100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DO30100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DO30100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DO30100] TO [DYNGRP]
GO

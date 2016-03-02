CREATE TABLE [dbo].[PC40300]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40300] ADD CONSTRAINT [CK__PC40300__ENDDATE__440C4C4C] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40300] ADD CONSTRAINT [CK__PC40300__STRTDAT__45007085] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40300] ADD CONSTRAINT [PKPC40300] PRIMARY KEY NONCLUSTERED  ([PLANCODE]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PC40300] ON [dbo].[PC40300] ([DSCRIPTN], [PLANCODE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40300].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40300].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40300].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40300].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40300].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[PC40300] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40300] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40300] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40300] TO [DYNGRP]
GO

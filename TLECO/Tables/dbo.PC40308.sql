CREATE TABLE [dbo].[PC40308]
(
[PLANCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[JOBTITLE] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[TEMPSEAT] [tinyint] NOT NULL,
[SEAT] [int] NOT NULL,
[SEQNUMBR] [int] NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[STRTDATE] [datetime] NOT NULL,
[ENDDATE] [datetime] NOT NULL,
[BUDGETAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PC40308] ADD CONSTRAINT [CK__PC40308__ENDDATE__5EC04288] CHECK ((datepart(hour,[ENDDATE])=(0) AND datepart(minute,[ENDDATE])=(0) AND datepart(second,[ENDDATE])=(0) AND datepart(millisecond,[ENDDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40308] ADD CONSTRAINT [CK__PC40308__STRTDAT__5FB466C1] CHECK ((datepart(hour,[STRTDATE])=(0) AND datepart(minute,[STRTDATE])=(0) AND datepart(second,[STRTDATE])=(0) AND datepart(millisecond,[STRTDATE])=(0)))
GO
ALTER TABLE [dbo].[PC40308] ADD CONSTRAINT [PKPC40308] PRIMARY KEY NONCLUSTERED  ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [SEQNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2PC40308] ON [dbo].[PC40308] ([PLANCODE], [JOBTITLE], [TEMPSEAT], [SEAT], [STRTDATE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40308].[PLANCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40308].[JOBTITLE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40308].[TEMPSEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40308].[SEAT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PC40308].[SEQNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PC40308].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40308].[STRTDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PC40308].[ENDDATE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PC40308].[BUDGETAMT]'
GO
GRANT SELECT ON  [dbo].[PC40308] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PC40308] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PC40308] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PC40308] TO [DYNGRP]
GO

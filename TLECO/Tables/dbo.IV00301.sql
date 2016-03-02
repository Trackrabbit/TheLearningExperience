CREATE TABLE [dbo].[IV00301]
(
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB4] [datetime] NOT NULL,
[LOTATRB5] [datetime] NOT NULL,
[IUSCOUNT] [smallint] NOT NULL,
[RCRDSTTS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV00301] ADD CONSTRAINT [CK__IV00301__LOTATRB__1B29035F] CHECK ((datepart(hour,[LOTATRB4])=(0) AND datepart(minute,[LOTATRB4])=(0) AND datepart(second,[LOTATRB4])=(0) AND datepart(millisecond,[LOTATRB4])=(0)))
GO
ALTER TABLE [dbo].[IV00301] ADD CONSTRAINT [CK__IV00301__LOTATRB__1C1D2798] CHECK ((datepart(hour,[LOTATRB5])=(0) AND datepart(minute,[LOTATRB5])=(0) AND datepart(second,[LOTATRB5])=(0) AND datepart(millisecond,[LOTATRB5])=(0)))
GO
ALTER TABLE [dbo].[IV00301] ADD CONSTRAINT [PKIV00301] PRIMARY KEY NONCLUSTERED  ([ITEMNMBR], [LOTNUMBR]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2IV00301] ON [dbo].[IV00301] ([IUSCOUNT], [RCRDSTTS], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00301].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00301].[LOTNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00301].[LOTATRB1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00301].[LOTATRB2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV00301].[LOTATRB3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00301].[LOTATRB4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV00301].[LOTATRB5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00301].[IUSCOUNT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV00301].[RCRDSTTS]'
GO
GRANT SELECT ON  [dbo].[IV00301] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV00301] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV00301] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV00301] TO [DYNGRP]
GO

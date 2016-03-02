CREATE TABLE [dbo].[IV30600]
(
[IVDOCTYP] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNSEQNBR] [numeric] (19, 5) NOT NULL,
[SLTSQNUM] [int] NOT NULL,
[LOTATRB1] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB2] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB3] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LOTATRB4] [datetime] NOT NULL,
[LOTATRB5] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IV30600] ADD CONSTRAINT [CK__IV30600__LOTATRB__75C27486] CHECK ((datepart(hour,[LOTATRB4])=(0) AND datepart(minute,[LOTATRB4])=(0) AND datepart(second,[LOTATRB4])=(0) AND datepart(millisecond,[LOTATRB4])=(0)))
GO
ALTER TABLE [dbo].[IV30600] ADD CONSTRAINT [CK__IV30600__LOTATRB__76B698BF] CHECK ((datepart(hour,[LOTATRB5])=(0) AND datepart(minute,[LOTATRB5])=(0) AND datepart(second,[LOTATRB5])=(0) AND datepart(millisecond,[LOTATRB5])=(0)))
GO
ALTER TABLE [dbo].[IV30600] ADD CONSTRAINT [PKIV30600] PRIMARY KEY NONCLUSTERED  ([IVDOCTYP], [DOCNUMBR], [LNSEQNBR], [SLTSQNUM]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30600].[IVDOCTYP]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30600].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[IV30600].[LNSEQNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[IV30600].[SLTSQNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30600].[LOTATRB1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30600].[LOTATRB2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[IV30600].[LOTATRB3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30600].[LOTATRB4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[IV30600].[LOTATRB5]'
GO
GRANT SELECT ON  [dbo].[IV30600] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[IV30600] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[IV30600] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[IV30600] TO [DYNGRP]
GO

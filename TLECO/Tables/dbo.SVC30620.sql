CREATE TABLE [dbo].[SVC30620]
(
[CONSTS] [smallint] NOT NULL,
[CONTNBR] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[LNITMSEQ] [int] NOT NULL,
[SVC_Contract_Line_SEQ] [numeric] (19, 5) NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[ITEMNMBR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SERLNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ADRSCODE] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ITEMDESC] [char] (101) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SVC_Contract_Version] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SVC30620] ADD CONSTRAINT [CK__SVC30620__TIME1__758E35B3] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[SVC30620] ADD CONSTRAINT [CK__SVC30620__DATE1__749A117A] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[SVC30620] ADD CONSTRAINT [PKSVC30620] PRIMARY KEY CLUSTERED  ([CONSTS], [CONTNBR], [SVC_Contract_Version], [LNITMSEQ]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SVC30620] ON [dbo].[SVC30620] ([CONSTS], [CONTNBR], [SVC_Contract_Version], [SVC_Contract_Line_SEQ], [LNITMSEQ]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30620].[CONSTS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[CONTNBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30620].[LNITMSEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SVC30620].[SVC_Contract_Line_SEQ]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30620].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SVC30620].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[ITEMNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[SERLNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[ADRSCODE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[ITEMDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SVC30620].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SVC30620].[SVC_Contract_Version]'
GO
GRANT SELECT ON  [dbo].[SVC30620] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SVC30620] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SVC30620] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SVC30620] TO [DYNGRP]
GO

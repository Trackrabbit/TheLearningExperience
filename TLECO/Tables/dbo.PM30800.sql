CREATE TABLE [dbo].[PM30800]
(
[VENDORID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[VCHRNMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DOCTYPE] [smallint] NOT NULL,
[DOCNUMBR] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[POPRCTNM] [char] (17) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Tax_Date] [datetime] NOT NULL,
[TaxInvRecvd] [tinyint] NOT NULL,
[GSTDSAMT] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PM30800] ADD CONSTRAINT [CK__PM30800__Tax_Dat__2D67AF2B] CHECK ((datepart(hour,[Tax_Date])=(0) AND datepart(minute,[Tax_Date])=(0) AND datepart(second,[Tax_Date])=(0) AND datepart(millisecond,[Tax_Date])=(0)))
GO
ALTER TABLE [dbo].[PM30800] ADD CONSTRAINT [PKPM30800] PRIMARY KEY NONCLUSTERED  ([VCHRNMBR], [DOCTYPE]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30800].[VENDORID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30800].[VCHRNMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30800].[DOCTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30800].[DOCNUMBR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[PM30800].[POPRCTNM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[PM30800].[Tax_Date]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[PM30800].[TaxInvRecvd]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[PM30800].[GSTDSAMT]'
GO
GRANT SELECT ON  [dbo].[PM30800] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[PM30800] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[PM30800] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[PM30800] TO [DYNGRP]
GO

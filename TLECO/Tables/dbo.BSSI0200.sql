CREATE TABLE [dbo].[BSSI0200]
(
[BSSI_Product_ID] [smallint] NOT NULL,
[BSSI_Build_Number] [smallint] NOT NULL,
[DATE1] [datetime] NOT NULL,
[TIME1] [datetime] NOT NULL,
[PRODNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[BSSI0200] ADD CONSTRAINT [CK__BSSI0200__TIME1__4D719078] CHECK ((datepart(day,[TIME1])=(1) AND datepart(month,[TIME1])=(1) AND datepart(year,[TIME1])=(1900)))
GO
ALTER TABLE [dbo].[BSSI0200] ADD CONSTRAINT [CK__BSSI0200__DATE1__4C7D6C3F] CHECK ((datepart(hour,[DATE1])=(0) AND datepart(minute,[DATE1])=(0) AND datepart(second,[DATE1])=(0) AND datepart(millisecond,[DATE1])=(0)))
GO
ALTER TABLE [dbo].[BSSI0200] ADD CONSTRAINT [PKBSSI0200] PRIMARY KEY NONCLUSTERED  ([BSSI_Product_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0200].[BSSI_Product_ID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[BSSI0200].[BSSI_Build_Number]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BSSI0200].[DATE1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[BSSI0200].[TIME1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[BSSI0200].[PRODNAME]'
GO
GRANT SELECT ON  [dbo].[BSSI0200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[BSSI0200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[BSSI0200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[BSSI0200] TO [DYNGRP]
GO

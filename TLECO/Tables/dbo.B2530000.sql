CREATE TABLE [dbo].[B2530000]
(
[PARVENID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[B2530000] ADD CONSTRAINT [CK__B2530000__CREATD__3CD905C1] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[B2530000] ADD CONSTRAINT [CK__B2530000__MODIFD__3DCD29FA] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[B2530000] ADD CONSTRAINT [PKB2530000] PRIMARY KEY NONCLUSTERED  ([PARVENID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[B2530000].[PARVENID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[B2530000].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530000].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[B2530000].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[B2530000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[B2530000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[B2530000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[B2530000] TO [DYNGRP]
GO

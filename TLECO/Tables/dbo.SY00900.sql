CREATE TABLE [dbo].[SY00900]
(
[SOURCDOC] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SDOCDSCR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SY00900] ADD CONSTRAINT [CK__SY00900__CREATDD__2858E14B] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY00900] ADD CONSTRAINT [CK__SY00900__MODIFDT__294D0584] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY00900] ADD CONSTRAINT [PKSY00900] PRIMARY KEY NONCLUSTERED  ([SOURCDOC]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY00900] ON [dbo].[SY00900] ([SDOCDSCR], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00900].[SOURCDOC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00900].[SDOCDSCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[SY00900].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY00900].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00900].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY00900].[MODIFDT]'
GO
GRANT SELECT ON  [dbo].[SY00900] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY00900] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY00900] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY00900] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_accounts payable coordinator]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_accounts receivable coordinator]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_collections manager]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_executive]
GO
GRANT SELECT ON  [dbo].[SY00900] TO [rpt_order processor]
GO

CREATE TABLE [dbo].[UPR40202]
(
[SETUPKEY] [smallint] NOT NULL,
[ASGMTPRTY_1] [smallint] NOT NULL,
[ASGMTPRTY_2] [smallint] NOT NULL,
[ASGMTPRTY_3] [smallint] NOT NULL,
[ASGMTPRTY_4] [smallint] NOT NULL,
[ASGMTPRTY_5] [smallint] NOT NULL,
[ASGMTPRTY_6] [smallint] NOT NULL,
[ASGMTPRTY_7] [smallint] NOT NULL,
[ASGMTPRTY_8] [smallint] NOT NULL,
[ASGMTPRTY_9] [smallint] NOT NULL,
[ASGMTPRTY_10] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR40202] ADD CONSTRAINT [PKUPR40202] PRIMARY KEY NONCLUSTERED  ([SETUPKEY]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[SETUPKEY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_8]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_9]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[UPR40202].[ASGMTPRTY_10]'
GO
GRANT SELECT ON  [dbo].[UPR40202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR40202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR40202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR40202] TO [DYNGRP]
GO

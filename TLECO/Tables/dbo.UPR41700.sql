CREATE TABLE [dbo].[UPR41700]
(
[SUPERVISORCODE_I] [char] (7) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SUPERVISOR] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[EMPLOYID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[CHANGEBY_I] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[CHANGEDATE_I] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[UPR41700] ADD CONSTRAINT [CK__UPR41700__CHANGE__28ADE706] CHECK ((datepart(hour,[CHANGEDATE_I])=(0) AND datepart(minute,[CHANGEDATE_I])=(0) AND datepart(second,[CHANGEDATE_I])=(0) AND datepart(millisecond,[CHANGEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[UPR41700] ADD CONSTRAINT [PKUPR41700] PRIMARY KEY CLUSTERED  ([SUPERVISORCODE_I]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2UPR41700] ON [dbo].[UPR41700] ([SUPERVISOR], [SUPERVISORCODE_I]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41700].[SUPERVISORCODE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41700].[SUPERVISOR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41700].[EMPLOYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[UPR41700].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[UPR41700].[CHANGEBY_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[UPR41700].[CHANGEDATE_I]'
GO
GRANT SELECT ON  [dbo].[UPR41700] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[UPR41700] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[UPR41700] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41700] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[UPR41700] TO [RAPIDGRP]
GO
GRANT INSERT ON  [dbo].[UPR41700] TO [RAPIDGRP]
GO
GRANT DELETE ON  [dbo].[UPR41700] TO [RAPIDGRP]
GO
GRANT UPDATE ON  [dbo].[UPR41700] TO [RAPIDGRP]
GO
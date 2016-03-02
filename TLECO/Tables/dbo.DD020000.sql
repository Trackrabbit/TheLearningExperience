CREATE TABLE [dbo].[DD020000]
(
[EFFECTIVEDATE_I] [datetime] NOT NULL,
[DWNONWKNDS] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DD020000] ADD CONSTRAINT [CK__DD020000__EFFECT__53EDAE5A] CHECK ((datepart(hour,[EFFECTIVEDATE_I])=(0) AND datepart(minute,[EFFECTIVEDATE_I])=(0) AND datepart(second,[EFFECTIVEDATE_I])=(0) AND datepart(millisecond,[EFFECTIVEDATE_I])=(0)))
GO
ALTER TABLE [dbo].[DD020000] ADD CONSTRAINT [PKDD020000] PRIMARY KEY CLUSTERED  ([DWNONWKNDS]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[DD020000].[EFFECTIVEDATE_I]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[DD020000].[DWNONWKNDS]'
GO
GRANT SELECT ON  [dbo].[DD020000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[DD020000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[DD020000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[DD020000] TO [DYNGRP]
GO
CREATE TABLE [dbo].[AAG00200]
(
[ACTINDX] [int] NOT NULL,
[aaAcctClassID] [int] NOT NULL,
[aaChangeDate] [datetime] NOT NULL,
[aaChangeTime] [datetime] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[AAG00200] ADD CONSTRAINT [CK__AAG00200__aaChan__2A5703AD] CHECK ((datepart(day,[aaChangeTime])=(1) AND datepart(month,[aaChangeTime])=(1) AND datepart(year,[aaChangeTime])=(1900)))
GO
ALTER TABLE [dbo].[AAG00200] ADD CONSTRAINT [CK__AAG00200__aaChan__2962DF74] CHECK ((datepart(hour,[aaChangeDate])=(0) AND datepart(minute,[aaChangeDate])=(0) AND datepart(second,[aaChangeDate])=(0) AND datepart(millisecond,[aaChangeDate])=(0)))
GO
ALTER TABLE [dbo].[AAG00200] ADD CONSTRAINT [PKAAG00200] PRIMARY KEY CLUSTERED  ([ACTINDX]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00200] ON [dbo].[AAG00200] ([aaAcctClassID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00200].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00200].[aaAcctClassID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00200].[aaChangeDate]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[AAG00200].[aaChangeTime]'
GO
GRANT SELECT ON  [dbo].[AAG00200] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00200] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00200] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00200] TO [DYNGRP]
GO

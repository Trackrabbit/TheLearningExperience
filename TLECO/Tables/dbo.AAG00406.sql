CREATE TABLE [dbo].[AAG00406]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[aaRelTrxDimID] [int] NOT NULL,
[aaRelTrxDimCodeID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor406] on [dbo].[AAG00406] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID =0,  @aaAcctClassID = null    select @aaTrxDimID = aaTrxDimID from inserted  if @aaTrxDimID is null  begin  select @aaTrxDimID = aaTrxDimID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
ALTER TABLE [dbo].[AAG00406] ADD CONSTRAINT [PKAAG00406] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeID], [aaRelTrxDimID], [aaRelTrxDimCodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00406] ON [dbo].[AAG00406] ([aaRelTrxDimID], [aaRelTrxDimCodeID], [aaTrxDimID], [aaTrxDimCodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00406] ON [dbo].[AAG00406] ([aaTrxDimID], [aaRelTrxDimID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00406].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00406].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00406].[aaRelTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00406].[aaRelTrxDimCodeID]'
GO
GRANT SELECT ON  [dbo].[AAG00406] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00406] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00406] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00406] TO [DYNGRP]
GO

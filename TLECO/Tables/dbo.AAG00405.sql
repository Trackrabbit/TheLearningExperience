CREATE TABLE [dbo].[AAG00405]
(
[aaTrxDimID] [int] NOT NULL,
[aaRelTrxDimID] [int] NOT NULL,
[aaTrxDimRelType] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor405] on [dbo].[AAG00405] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID =0,  @aaAcctClassID = null   select @aaTrxDimID = aaTrxDimID from inserted  if @aaTrxDimID is null  begin  select @aaTrxDimID = aaTrxDimID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
ALTER TABLE [dbo].[AAG00405] ADD CONSTRAINT [PKAAG00405] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaRelTrxDimID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00405] ON [dbo].[AAG00405] ([aaTrxDimID], [aaTrxDimRelType], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00405] ON [dbo].[AAG00405] ([aaTrxDimRelType], [aaTrxDimID], [aaRelTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00405].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00405].[aaRelTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00405].[aaTrxDimRelType]'
GO
GRANT SELECT ON  [dbo].[AAG00405] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00405] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00405] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00405] TO [DYNGRP]
GO

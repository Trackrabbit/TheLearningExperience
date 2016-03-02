CREATE TABLE [dbo].[AAG00407]
(
[aaTrxDimID] [int] NOT NULL,
[aaAllowAdjustment] [tinyint] NOT NULL,
[aaCodeReqdDrgAdj] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor407] on [dbo].[AAG00407] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID =0,  @aaAcctClassID = null    select @aaTrxDimID = aaTrxDimID from inserted  if @aaTrxDimID is null  begin  select @aaTrxDimID = aaTrxDimID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
ALTER TABLE [dbo].[AAG00407] ADD CONSTRAINT [PKAAG00407] PRIMARY KEY CLUSTERED  ([aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00407].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00407].[aaAllowAdjustment]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00407].[aaCodeReqdDrgAdj]'
GO
GRANT SELECT ON  [dbo].[AAG00407] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00407] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00407] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00407] TO [DYNGRP]
GO

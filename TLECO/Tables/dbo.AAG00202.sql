CREATE TABLE [dbo].[AAG00202]
(
[aaAcctClassID] [int] NOT NULL,
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeIDDflt] [int] NOT NULL,
[aaDataEntry] [smallint] NOT NULL,
[aaShow] [tinyint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor202] on [dbo].[AAG00202] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID = null,  @aaAcctClassID = 0    select @aaAcctClassID = aaAcctClassID from inserted  if @aaAcctClassID is null  begin  select @aaAcctClassID = aaAcctClassID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
ALTER TABLE [dbo].[AAG00202] ADD CONSTRAINT [PKAAG00202] PRIMARY KEY CLUSTERED  ([aaAcctClassID], [aaTrxDimID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00202].[aaAcctClassID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00202].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00202].[aaTrxDimCodeIDDflt]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00202].[aaDataEntry]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00202].[aaShow]'
GO
GRANT SELECT ON  [dbo].[AAG00202] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00202] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00202] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00202] TO [DYNGRP]
GO

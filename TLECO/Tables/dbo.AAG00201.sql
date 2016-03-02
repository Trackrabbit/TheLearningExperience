CREATE TABLE [dbo].[AAG00201]
(
[aaAcctClassID] [int] NOT NULL,
[aaAccountClass] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAcctClassDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAcctClassDescr2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaSetCustID] [tinyint] NOT NULL,
[aaSetVendID] [tinyint] NOT NULL,
[aaSetItemID] [tinyint] NOT NULL,
[aaSetSiteID] [tinyint] NOT NULL,
[aaSetEmployeeID] [tinyint] NOT NULL,
[aaSetAssetID] [tinyint] NOT NULL,
[aaSetBookID] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_AAG00201Del] on [dbo].[AAG00201] for delete as  declare @acctClassID int,  @status smallint  select @acctClassID = 0,  @status = 0  select @acctClassID = aaAcctClassID from deleted   exec aagDelAccountingClass @acctClassID, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor201] on [dbo].[AAG00201] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID = null,  @aaAcctClassID = 0    select @aaAcctClassID = aaAcctClassID from inserted  if @aaAcctClassID is null  begin  select @aaAcctClassID = aaAcctClassID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
ALTER TABLE [dbo].[AAG00201] ADD CONSTRAINT [PKAAG00201] PRIMARY KEY CLUSTERED  ([aaAcctClassID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00201] ON [dbo].[AAG00201] ([aaAccountClass]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00201] ON [dbo].[AAG00201] ([aaAcctClassDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaAcctClassID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00201].[aaAccountClass]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00201].[aaAcctClassDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00201].[aaAcctClassDescr2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetCustID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetVendID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetItemID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetSiteID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetEmployeeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetAssetID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00201].[aaSetBookID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00201].[NOTEINDX]'
GO
GRANT SELECT ON  [dbo].[AAG00201] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00201] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00201] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00201] TO [DYNGRP]
GO

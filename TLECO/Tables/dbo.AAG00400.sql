CREATE TABLE [dbo].[AAG00400]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDim] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaDataType] [smallint] NOT NULL,
[aaTrxDimDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimDescr2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaOrder] [int] NOT NULL,
[DECPLQTY] [smallint] NOT NULL,
[UOMSCHDL] [char] (11) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaAddrTrue] [tinyint] NOT NULL,
[aaAddCodesOnFly] [tinyint] NOT NULL,
[aaDontAskForNewCodes] [tinyint] NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[aaIncYEC] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG00400__DEX_RO__3508D0F3] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create  trigger [dbo].[aagUpdateDateTimefor400] on [dbo].[AAG00400] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID =0,  @aaAcctClassID = null    select @aaTrxDimID = aaTrxDimID from inserted  if @aaTrxDimID is null  begin  select @aaTrxDimID = aaTrxDimID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG00400U] ON [dbo].[AAG00400] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG00400 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG00400, inserted WHERE AAG00400.aaTrxDimID = inserted.aaTrxDimID END set nocount off    
GO
ALTER TABLE [dbo].[AAG00400] ADD CONSTRAINT [PKAAG00400] PRIMARY KEY CLUSTERED  ([aaTrxDimID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00400] ON [dbo].[AAG00400] ([aaDataType], [aaTrxDim], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5AAG00400] ON [dbo].[AAG00400] ([aaOrder], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00400] ON [dbo].[AAG00400] ([aaTrxDim]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4AAG00400] ON [dbo].[AAG00400] ([aaTrxDimDescr], [aaTrxDim], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00400].[aaTrxDim]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaDataType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00400].[aaTrxDimDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00400].[aaTrxDimDescr2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaOrder]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[DECPLQTY]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00400].[UOMSCHDL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaAddrTrue]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaAddCodesOnFly]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaDontAskForNewCodes]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00400].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[INACTIVE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00400].[aaIncYEC]'
GO
GRANT SELECT ON  [dbo].[AAG00400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00400] TO [DYNGRP]
GO

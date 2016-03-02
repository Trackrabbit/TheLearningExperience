CREATE TABLE [dbo].[AAG00401]
(
[aaTrxDimID] [int] NOT NULL,
[aaTrxDimCodeID] [int] NOT NULL,
[aaTrxDimCode] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimCodeDescr] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[aaTrxDimCodeDescr2] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[NOTEINDX] [numeric] (19, 5) NOT NULL,
[INACTIVE] [tinyint] NOT NULL,
[DEX_ROW_TS] [datetime] NOT NULL CONSTRAINT [DF__AAG00401__DEX_RO__22EA20B8] DEFAULT (getutcdate()),
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_AAG00401Del] on [dbo].[AAG00401] for delete as  declare @trxDimID     int,  @trxDimCodeID int,  @status smallint  select  @trxDimID = 0,  @trxDimCodeID = 0,  @status = 0  select @trxDimID = aaTrxDimID, @trxDimCodeID = aaTrxDimCodeID from deleted   exec aagDelMstrRecord @trxDimCodeID, 7, @trxDimID, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create trigger [dbo].[aagTR_AAG00401Ins] on [dbo].[AAG00401] for insert as  declare @trxDimID     int,  @trxDimCodeID int,  @status       smallint  select  @trxDimID = 0,  @trxDimCodeID = 0,  @status = 0  select @trxDimID = aaTrxDimID, @trxDimCodeID = aaTrxDimCodeID from inserted   exec aagInsMstrRecord @trxDimCodeID, 7, @trxDimID, @status out    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create     trigger [dbo].[aagUpdateDateTimefor401] on [dbo].[AAG00401] for insert,update, delete as begin  set nocount on  declare @aaTrxDimID int,  @aaAcctClassID int  select  @aaTrxDimID =0,  @aaAcctClassID = null    select @aaTrxDimID = aaTrxDimID from inserted  if @aaTrxDimID is null  begin  select @aaTrxDimID = aaTrxDimID from deleted  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end   else  begin  exec aagUpdateCurrDateTime @aaTrxDimID,@aaAcctClassID   end  set nocount off end    
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE TRIGGER [dbo].[zDT_AAG00401U] ON [dbo].[AAG00401] AFTER UPDATE AS set nocount on BEGIN UPDATE dbo.AAG00401 SET DEX_ROW_TS = GETUTCDATE() FROM dbo.AAG00401, inserted WHERE AAG00401.aaTrxDimID = inserted.aaTrxDimID AND AAG00401.aaTrxDimCodeID = inserted.aaTrxDimCodeID END set nocount off    
GO
ALTER TABLE [dbo].[AAG00401] ADD CONSTRAINT [PKAAG00401] PRIMARY KEY CLUSTERED  ([aaTrxDimID], [aaTrxDimCodeID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2AAG00401] ON [dbo].[AAG00401] ([aaTrxDimID], [aaTrxDimCode]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3AAG00401] ON [dbo].[AAG00401] ([aaTrxDimID], [aaTrxDimCodeDescr], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00401].[aaTrxDimID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00401].[aaTrxDimCodeID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00401].[aaTrxDimCode]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00401].[aaTrxDimCodeDescr]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[AAG00401].[aaTrxDimCodeDescr2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_MONEY]', N'[dbo].[AAG00401].[NOTEINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[AAG00401].[INACTIVE]'
GO
GRANT SELECT ON  [dbo].[AAG00401] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[AAG00401] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[AAG00401] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[AAG00401] TO [DYNGRP]
GO

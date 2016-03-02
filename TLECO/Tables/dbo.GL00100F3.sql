CREATE TABLE [dbo].[GL00100F3]
(
[ACTINDX] [int] NOT NULL,
[ACTNUMBR_1] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_2] [char] (5) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_3] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTNUMBR_4] [char] (3) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACTALIAS] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MNACSGMT] [char] (67) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCTTYPE] [smallint] NOT NULL,
[ACTDESCR] [char] (51) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ACCATNUM] [smallint] NOT NULL,
[RELID] [int] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[glFilter3InsertTrigger] on [dbo].[GL00100F3] for insert as declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @iErrorState int,  @iError int,  @dbname char(5),  @cRaiserrorString char(255),  @sLanguageID smallint select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from DYNAMICS..ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1  begin  select  @sLanguageID    =       ACT.Language_ID  from  dbo.ACTIVITY   ACT  where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       db_name()   select  @cRaiserrorString = SMESSAGE  from  DYNAMICS..GPS_SQL_Error_Codes  where  CODE = @iRaiserror and  Language_ID = @sLanguageID   if @@rowcount <> 1 or @@error <> 0  begin  select @dbname = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  2219,  @dbname,  @cRaiserrorString  output,  @iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@iErrorState <> 0)  select @cRaiserrorString = 'The following error occurred in trigger glFilter3InsertTrigger, but the message for the error could not be retrieved. Message = '   select @cRaiserrorString = @cRaiserrorString + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction  end 
GO
SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[glFilter3UpdateTrigger] on [dbo].[GL00100F3] for update as declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @iErrorState int,  @iError int,  @dbname char(5),  @cRaiserrorString char(255),  @sLanguageID smallint select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from DYNAMICS..ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1  begin  select  @sLanguageID    =       ACT.Language_ID  from  dbo.ACTIVITY   ACT  where  ACT.USERID =       system_user and  ACT.CMPNYNAM =       db_name()   select  @cRaiserrorString = SMESSAGE  from  DYNAMICS..GPS_SQL_Error_Codes  where  CODE = @iRaiserror and  Language_ID = @sLanguageID   if @@rowcount <> 1 or @@error <> 0  begin  select @dbname = db_name()  exec @iStatus = DYNAMICS.dbo.smGetMsgString  2219,  @dbname,  @cRaiserrorString  output,  @iErrorState output   select @iError = @@error  if @iStatus = 0 and @iError <> 0  select @iStatus = @iError  if (@iStatus <> 0) or (@iErrorState <> 0)  select @cRaiserrorString = 'The following error occurred in trigger glFilter3UpdateTrigger, but the message for the error could not be retrieved. Message = '   select @cRaiserrorString = @cRaiserrorString + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction  end 
GO
ALTER TABLE [dbo].[GL00100F3] ADD CONSTRAINT [PKGL00100F3] PRIMARY KEY NONCLUSTERED  ([ACTINDX], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5GL00100F3] ON [dbo].[GL00100F3] ([ACCATNUM], [MNACSGMT], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4GL00100F3] ON [dbo].[GL00100F3] ([ACCTTYPE], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2GL00100F3] ON [dbo].[GL00100F3] ([ACTALIAS], [ACTINDX], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3GL00100F3] ON [dbo].[GL00100F3] ([ACTDESCR], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK6GL00100F3] ON [dbo].[GL00100F3] ([ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK7GL00100F3] ON [dbo].[GL00100F3] ([MNACSGMT], [ACTNUMBR_1], [ACTNUMBR_2], [ACTNUMBR_3], [ACTNUMBR_4], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK8GL00100F3] ON [dbo].[GL00100F3] ([RELID], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100F3].[ACTINDX]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTNUMBR_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTNUMBR_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTNUMBR_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTNUMBR_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTALIAS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[MNACSGMT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100F3].[ACCTTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[GL00100F3].[ACTDESCR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100F3].[ACCATNUM]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[GL00100F3].[RELID]'
GO
GRANT REFERENCES ON  [dbo].[GL00100F3] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL00100F3] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[GL00100F3] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[GL00100F3] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[GL00100F3] TO [DYNGRP]
GO
GRANT SELECT ON  [dbo].[GL00100F3] TO [rpt_accounting manager]
GO
GRANT SELECT ON  [dbo].[GL00100F3] TO [rpt_bookkeeper]
GO
GRANT SELECT ON  [dbo].[GL00100F3] TO [rpt_certified accountant]
GO
GRANT SELECT ON  [dbo].[GL00100F3] TO [rpt_executive]
GO

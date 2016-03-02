CREATE TABLE [dbo].[ORG00100]
(
[RELID] [int] NOT NULL,
[PARNTRLTID] [int] NOT NULL,
[RELSTRNG] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTITYID] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[orgRelation_MSTRDeleteTrigger] on [dbo].[ORG00100] for delete as  declare  @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255),  @filtername char(255),  @tempRELID int,  @RELID int  select @tErrorOccurred = 0  update  SY01400 set   RELID = 0 from  SY01400 u, deleted d where  u.RELID = d.RELID  update   SY40400 set   RELID = 0 from  SY40400 c, deleted d where  c.RELID = d.RELID  select  @RELID = min(RELID) from  deleted  while @RELID <> NULL  begin  exec smCheckRelationID @RELID,@iStatus output  if @iStatus <> 0  begin  select @tErrorOccurred = 1  select @iRaiserror = 21062  break  end  select @tempRELID = @RELID  select @RELID = NULL  select  @RELID = min(RELID)  from  deleted  where  @RELID > @tempRELID  end  if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror   if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction end  PRINT 'CREATING TRIGGER : dbo.orgRelation_MSTRInsertTrigger'   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[orgRelation_MSTRInsertTrigger] on [dbo].[ORG00100] for insert as  declare @iLoopCount   int,  @iStartPosString int,  @ORGMAXLEVEL int,  @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255)  select  @iStartPosString = 1,  @iLoopCount   = 1,  @tErrorOccurred  = 0  exec @iStatus = smGetConstantInt  'ORGMAXLEVEL',  @ORGMAXLEVEL output,  @iSQL_Error_State output  if @iStatus <> 0 or @iSQL_Error_State <> 0 or @@error <> 0 begin  select @iRaiserror  = 20943,  @tErrorOccurred = 1 end  while @iLoopCount <= @ORGMAXLEVEL and @tErrorOccurred = 0 begin  if exists (  select  1  from  inserted  where  substring(RELSTRNG,@iStartPosString,5) < '32767'  and  convert(int,substring(RELSTRNG,@iStartPosString,5)) not in   ( select  ENTITYID   from   ORG00100))  begin  select @iRaiserror  = 20933,  @tErrorOccurred = 1  end   if exists ( select  1  from  inserted  where  substring(RELSTRNG,@iStartPosString,5) < '32767'  and  (convert(integer,substring(RELSTRNG,@iStartPosString,5)) not in  ( select   ENTITYID   from   ORG40100   where   ENTYLVL = @iLoopCount) )  )  begin  select @iRaiserror  = 20944,  @tErrorOccurred = 1  end   select  @iLoopCount   = @iLoopCount + 1,  @iStartPosString  = @iStartPosString + 6  end   if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror   if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction end    
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[orgRelation_MSTRUpdateTrigger] on [dbo].[ORG00100] for update as  declare @iLoopCount   int,  @iStartPosString int,  @ORGMAXLEVEL int,  @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255)  select  @iStartPosString = 1,  @iLoopCount   = 1,  @tErrorOccurred  = 0  exec @iStatus = smGetConstantInt  'ORGMAXLEVEL',  @ORGMAXLEVEL output,  @iSQL_Error_State output  if @iStatus <> 0 or @iSQL_Error_State <> 0 or @@error <> 0 begin  select @iRaiserror  = 20934,  @tErrorOccurred = 1 end  while @iLoopCount <= @ORGMAXLEVEL and @tErrorOccurred = 0 begin   if exists (  select  1  from  inserted  where  substring(RELSTRNG,@iStartPosString,5) < '32767'  and  convert(int,substring(RELSTRNG,@iStartPosString,5)) not in   ( select  ENTITYID   from   ORG00100))  begin  select @iRaiserror  = 20936,  @tErrorOccurred = 1  end   if exists ( select  1  from  inserted  where  substring(RELSTRNG,@iStartPosString,5) < '32767'  and  (convert(integer,substring(RELSTRNG,@iStartPosString,5)) not in  ( select   ENTITYID   from   ORG40100   where   ENTYLVL = @iLoopCount) )  )  begin  select @iRaiserror  = 20935,  @tErrorOccurred = 1  end   select  @iLoopCount   = @iLoopCount + 1,  @iStartPosString  = @iStartPosString + 6  end   if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror   if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction end    
GO
ALTER TABLE [dbo].[ORG00100] ADD CONSTRAINT [PKORG00100] PRIMARY KEY NONCLUSTERED  ([RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4ORG00100] ON [dbo].[ORG00100] ([ENTITYID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ORG00100] ON [dbo].[ORG00100] ([PARNTRLTID], [RELID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3ORG00100] ON [dbo].[ORG00100] ([RELSTRNG]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORG00100] ADD CONSTRAINT [orgRelation_MSTR] FOREIGN KEY ([ENTITYID]) REFERENCES [dbo].[ORG40100] ([ENTITYID])
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG00100].[RELID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG00100].[PARNTRLTID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ORG00100].[RELSTRNG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG00100].[ENTITYID]'
GO
GRANT SELECT ON  [dbo].[ORG00100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ORG00100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ORG00100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ORG00100] TO [DYNGRP]
GO

CREATE TABLE [dbo].[ORG40100]
(
[ENTITYID] [smallint] NOT NULL,
[ENTYNAME] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTYDESC] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[ENTYLVL] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[orgEntity_SETPInsertTrigger] on [dbo].[ORG40100] for insert as  declare @ORGMAXENTITY int,  @iStatus int,  @iSQL_Error_State int,  @iRaiserror int,  @tErrorOccurred tinyint,  @cRaiserrorString char(255)  exec @iStatus = smGetConstantInt  'ORGMAXENTITY',  @ORGMAXENTITY output,  @iSQL_Error_State output  if @iStatus <> 0 or @iSQL_Error_State <> 0 or @@error <> 0 begin  select @iRaiserror  = 20938,  @tErrorOccurred = 1 end  if exists ( select  1  from  ORG40100  group by ENTYLVL  having count(ENTITYID) > @ORGMAXENTITY) begin  select @iRaiserror  = 20939,  @tErrorOccurred = 1 end  if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror   if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction end    
GO
ALTER TABLE [dbo].[ORG40100] ADD CONSTRAINT [PKORG40100] PRIMARY KEY NONCLUSTERED  ([ENTITYID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2ORG40100] ON [dbo].[ORG40100] ([ENTYLVL], [ENTYNAME]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[ORG40100] ADD CONSTRAINT [orgEntity_SETP] FOREIGN KEY ([ENTYLVL]) REFERENCES [dbo].[ORG40000] ([ENTYLVL])
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG40100].[ENTITYID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ORG40100].[ENTYNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ORG40100].[ENTYDESC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG40100].[ENTYLVL]'
GO
GRANT SELECT ON  [dbo].[ORG40100] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ORG40100] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ORG40100] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ORG40100] TO [DYNGRP]
GO

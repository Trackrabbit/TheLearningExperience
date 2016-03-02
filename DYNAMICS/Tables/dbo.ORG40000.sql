CREATE TABLE [dbo].[ORG40000]
(
[ENTYLVL] [smallint] NOT NULL,
[LVLLABEL] [char] (21) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[orgLevel_SETPDeleteTrigger] on [dbo].[ORG40000] for delete as  declare @iMaxLevel int,  @iRaiserror int,  @cRaiserrorString char(255)  select   @iMaxLevel = max(ENTYLVL)  from   ORG40000  if exists ( select  1  from  deleted  where  deleted.ENTYLVL < @iMaxLevel) begin   select @iRaiserror = 20937   select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror   if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  rollback transaction end    
GO
ALTER TABLE [dbo].[ORG40000] WITH NOCHECK ADD CONSTRAINT [orgLevel_SETP] CHECK (([ENTYLVL]>=(0) AND [ENTYLVL]<=(4)))
GO
ALTER TABLE [dbo].[ORG40000] ADD CONSTRAINT [PKORG40000] PRIMARY KEY NONCLUSTERED  ([ENTYLVL]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[ORG40000].[ENTYLVL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[ORG40000].[LVLLABEL]'
GO
GRANT SELECT ON  [dbo].[ORG40000] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[ORG40000] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[ORG40000] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[ORG40000] TO [DYNGRP]
GO

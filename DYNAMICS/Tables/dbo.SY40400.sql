CREATE TABLE [dbo].[SY40400]
(
[CREATDDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[DSCRIPTN] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SRBCHSEC_1] [binary] (4) NOT NULL,
[SRBCHSEC_2] [binary] (4) NOT NULL,
[SRBCHSEC_3] [binary] (4) NOT NULL,
[SRBCHSEC_4] [binary] (4) NOT NULL,
[SRBCHSEC_5] [binary] (4) NOT NULL,
[SRBCHSEC_6] [binary] (4) NOT NULL,
[SRBCHSEC_7] [binary] (4) NOT NULL,
[SRSFNSEC_1] [binary] (4) NOT NULL,
[SRSFNSEC_2] [binary] (4) NOT NULL,
[SRSFNSEC_3] [binary] (4) NOT NULL,
[SRSFNSEC_4] [binary] (4) NOT NULL,
[SRSFNSEC_5] [binary] (4) NOT NULL,
[SRSFNSEC_6] [binary] (4) NOT NULL,
[SRSFNSEC_7] [binary] (4) NOT NULL,
[MSCPRMIS] [binary] (4) NOT NULL,
[DEFLTCLS] [tinyint] NOT NULL,
[RELID] [int] NOT NULL,
[SECACCS] [binary] (4) NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[syClassMainSETPInsertTrigger] on [dbo].[SY40400] for insert as  declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255) select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror  if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1) end  PRINT 'CREATING TRIGGER : dbo.dbo.syClassMainSETPUpdateTrigger'   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[syClassMainSETPUpdateTrigger] on [dbo].[SY40400] for update as  declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255) select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror  if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1) end  PRINT 'CREATING TRIGGER : dbo.dbo.syUserMSTRInsertTrigger'   
GO
ALTER TABLE [dbo].[SY40400] ADD CONSTRAINT [CK__SY40400__CREATDD__1E6F845E] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY40400] ADD CONSTRAINT [CK__SY40400__MODIFDT__1F63A897] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY40400] ADD CONSTRAINT [PKSY40400] PRIMARY KEY NONCLUSTERED  ([USRCLASS]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY40400] ON [dbo].[SY40400] ([DEFLTCLS], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY40400] ON [dbo].[SY40400] ([RELID], [USRCLASS], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40400].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40400].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY40400].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40400].[USRCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY40400].[DSCRIPTN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRBCHSEC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_1]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_2]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_3]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_4]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_5]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_6]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SRSFNSEC_7]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[MSCPRMIS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[DEFLTCLS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[RELID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY40400].[SECACCS]'
GO
GRANT SELECT ON  [dbo].[SY40400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY40400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY40400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY40400] TO [DYNGRP]
GO

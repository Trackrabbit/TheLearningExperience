CREATE TABLE [dbo].[SY01400]
(
[USERID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[USERNAME] [char] (31) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Zoom_Fields_Font_Color] [smallint] NOT NULL,
[Zoom_Fields_Font_Style] [smallint] NOT NULL,
[Editable_Fields_Backgrou] [smallint] NOT NULL,
[Editable_Fields_Font_Col] [smallint] NOT NULL,
[Editable_Fields_Pattern] [smallint] NOT NULL,
[Editable_Fields_Pattern_] [smallint] NOT NULL,
[Scrolling_Fields_Backgro] [smallint] NOT NULL,
[Scrolling_Fields_Font_Co] [smallint] NOT NULL,
[Scrolling_Fields_Pattern] [smallint] NOT NULL,
[Scrolling_Fields_PatCor] [smallint] NOT NULL,
[Required_Fields_Font_Col] [smallint] NOT NULL,
[Required_Fields_Font_Sty] [smallint] NOT NULL,
[Internet_Browser] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Internet_Address] [char] (255) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Internet_Type] [smallint] NOT NULL,
[Internet_Address_Name] [char] (81) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PASSWORD] [binary] (16) NOT NULL,
[USRCLASS] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[MDFRDENT] [smallint] NOT NULL,
[MODIFDT] [datetime] NOT NULL,
[CREATDDT] [datetime] NOT NULL,
[LSTUSRED] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[PRTOSCRN] [tinyint] NOT NULL,
[PRTOPRTR] [tinyint] NOT NULL,
[SHRQFLDS] [tinyint] NOT NULL,
[DISTPROC] [smallint] NOT NULL,
[HSCRLARW] [tinyint] NOT NULL,
[SOPTYPE] [smallint] NOT NULL,
[RELID] [int] NOT NULL,
[SECACCS] [binary] (4) NOT NULL,
[TODOOPEN] [tinyint] NOT NULL,
[TODOPERSOPEN] [tinyint] NOT NULL,
[TODOPERSROLL] [tinyint] NOT NULL,
[PALETTETYPE] [smallint] NOT NULL,
[ORGANIZATIONALVIEW] [smallint] NOT NULL,
[ACCOUNTINGVIEW] [tinyint] NOT NULL,
[USERLANG] [smallint] NOT NULL,
[UserRole] [smallint] NOT NULL,
[UserType] [smallint] NOT NULL,
[UserStatus] [smallint] NOT NULL,
[DateInactivated] [datetime] NOT NULL,
[Last_EWS_User_Name] [char] (237) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[Last_EWS_Email_Address] [char] (237) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WCUser] [tinyint] NOT NULL,
[ADObjectGuid] [char] (37) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[SQLLoginID] [char] (15) COLLATE SQL_Latin1_General_CP1_CI_AS NOT NULL,
[WindowCommandDisplay] [smallint] NOT NULL,
[DEX_ROW_ID] [int] NOT NULL IDENTITY(1, 1)
) ON [PRIMARY]
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[syUserMSTRInsertTrigger] on [dbo].[SY01400] for insert as  declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255) select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror  if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1)  end  PRINT 'CREATING TRIGGER : dbo.dbo.syUserMSTRUpdateTrigger'   
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
create trigger [dbo].[syUserMSTRUpdateTrigger] on [dbo].[SY01400] for update as  declare @iStatus int,  @iSQL_Error_State int,  @tErrorOccurred tinyint,  @iRaiserror int,  @cRaiserrorString char(255) select  @tErrorOccurred = 0  if exists (  select  1  from  inserted  where  RELID not in (select RELID from ORG00100) and RELID <> 0)  begin  select @iRaiserror  = 21041,  @tErrorOccurred = 1  end if @tErrorOccurred = 1 begin  select  @cRaiserrorString = SMESSAGE  from  GPS_SQL_Error_Codes  where  CODE = @iRaiserror  if @@rowcount <> 1 or @@error <> 0  begin  select @cRaiserrorString = 'The following error occurred, but message for error could not be retrieved. Message = '   + convert(char(255),@iRaiserror)  end  RAISERROR (@cRaiserrorString, -1, -1) end    
GO
ALTER TABLE [dbo].[SY01400] ADD CONSTRAINT [CK__SY01400__CREATDD__4AE3CED0] CHECK ((datepart(hour,[CREATDDT])=(0) AND datepart(minute,[CREATDDT])=(0) AND datepart(second,[CREATDDT])=(0) AND datepart(millisecond,[CREATDDT])=(0)))
GO
ALTER TABLE [dbo].[SY01400] ADD CONSTRAINT [CK__SY01400__DateIna__4BD7F309] CHECK ((datepart(hour,[DateInactivated])=(0) AND datepart(minute,[DateInactivated])=(0) AND datepart(second,[DateInactivated])=(0) AND datepart(millisecond,[DateInactivated])=(0)))
GO
ALTER TABLE [dbo].[SY01400] ADD CONSTRAINT [CK__SY01400__MODIFDT__49EFAA97] CHECK ((datepart(hour,[MODIFDT])=(0) AND datepart(minute,[MODIFDT])=(0) AND datepart(second,[MODIFDT])=(0) AND datepart(millisecond,[MODIFDT])=(0)))
GO
ALTER TABLE [dbo].[SY01400] ADD CONSTRAINT [PKSY01400] PRIMARY KEY NONCLUSTERED  ([USERID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK5SY01400] ON [dbo].[SY01400] ([ADObjectGuid], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK4SY01400] ON [dbo].[SY01400] ([RELID], [USERID], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK2SY01400] ON [dbo].[SY01400] ([USERNAME], [DEX_ROW_ID]) ON [PRIMARY]
GO
CREATE UNIQUE NONCLUSTERED INDEX [AK3SY01400] ON [dbo].[SY01400] ([USRCLASS], [DEX_ROW_ID]) ON [PRIMARY]
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[USERID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[USERNAME]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Zoom_Fields_Font_Color]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Zoom_Fields_Font_Style]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Editable_Fields_Backgrou]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Editable_Fields_Font_Col]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Editable_Fields_Pattern]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Editable_Fields_Pattern_]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Scrolling_Fields_Backgro]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Scrolling_Fields_Font_Co]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Scrolling_Fields_Pattern]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Scrolling_Fields_PatCor]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Required_Fields_Font_Col]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Required_Fields_Font_Sty]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[Internet_Browser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[Internet_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[Internet_Type]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[Internet_Address_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[PASSWORD]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[USRCLASS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[MDFRDENT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01400].[MODIFDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01400].[CREATDDT]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[LSTUSRED]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[PRTOSCRN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[PRTOPRTR]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[SHRQFLDS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[DISTPROC]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[HSCRLARW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[SOPTYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[RELID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[SECACCS]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[TODOOPEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[TODOPERSOPEN]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[TODOPERSROLL]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[PALETTETYPE]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[ORGANIZATIONALVIEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[ACCOUNTINGVIEW]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[USERLANG]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[UserRole]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[UserType]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[UserStatus]'
GO
EXEC sp_bindefault N'[dbo].[GPS_DATE]', N'[dbo].[SY01400].[DateInactivated]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[Last_EWS_User_Name]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[Last_EWS_Email_Address]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[WCUser]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[ADObjectGuid]'
GO
EXEC sp_bindefault N'[dbo].[GPS_CHAR]', N'[dbo].[SY01400].[SQLLoginID]'
GO
EXEC sp_bindefault N'[dbo].[GPS_INT]', N'[dbo].[SY01400].[WindowCommandDisplay]'
GO
GRANT SELECT ON  [dbo].[SY01400] TO [DYNGRP]
GO
GRANT INSERT ON  [dbo].[SY01400] TO [DYNGRP]
GO
GRANT DELETE ON  [dbo].[SY01400] TO [DYNGRP]
GO
GRANT UPDATE ON  [dbo].[SY01400] TO [DYNGRP]
GO

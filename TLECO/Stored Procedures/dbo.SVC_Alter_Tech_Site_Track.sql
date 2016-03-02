SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Alter_Tech_Site_Track](@Tech char(11)) as declare @goodwh char(11),  @badwh char(11),  @useTA tinyint select @goodwh = LOCNCODE, @badwh = LOCCODEB,@useTA = SVC_ItemSiteDelta from SVC00100 where TECHID = @Tech if @useTA = 1 BEGIN  update SVC00952 set SVC_ItemSiteDelta = 1 where LOCNCODE = @goodwh or LOCNCODE = @badwh END else BEGIN  if not exists(select * from SVC00100 where LOCNCODE = @goodwh or LOCCODEB = @goodwh)   update SVC00952 set SVC_ItemSiteDelta = 0 where LOCNCODE = @goodwh  if not exists(select * from SVC00100 where LOCNCODE = @badwh or LOCCODEB = @badwh)   update SVC00952 set SVC_ItemSiteDelta = 0 where LOCNCODE = @badwh END return    
GO
GRANT EXECUTE ON  [dbo].[SVC_Alter_Tech_Site_Track] TO [DYNGRP]
GO

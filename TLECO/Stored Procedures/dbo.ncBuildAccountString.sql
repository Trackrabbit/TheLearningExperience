SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ncBuildAccountString] 	@I_cOutputMask char(129) = NULL, /* mask for derived account we are building */ 	@I_cTemplateMask char(129) = NULL, /* mask for the template account we are reading from */ 	@I_cTemplateAccount char(129) = NULL, /* the template account */ 	@O_cOutputAccount char(129) = NULL output, /* resulting derived account */ 	@O_iErrorState int = NULL output as declare 	@iError int, 	@iStatus int, 	@tLoop tinyint, 	@tTransaction tinyint, 	@iMaskPos int, 	@iDestPos int, 	@msgString varchar(400) set nocount on select 	@O_iErrorState = 0, 	@iStatus = 0 if @@trancount = 0 begin 	select @tTransaction = 1 	begin transaction end while (@tLoop is NULL) begin 	select @tLoop = 1 	if @I_cOutputMask is NULL or 		@I_cTemplateMask is NULL or 		@I_cTemplateAccount is NULL 	begin 		select @O_iErrorState = 20030 		break 	end 	select @O_cOutputAccount = @I_cOutputMask 	/* PJB, 10/04/2006, used to replace '_' but now replaces '?' and '*' separately */ 	select @iMaskPos = CHARINDEX('?', @I_cTemplateMask, 0), @iDestPos = CHARINDEX('?', @I_cOutputMask, 0) 	while (@iMaskPos > 0) and (@iDestPos > 0) 	begin 		select @O_cOutputAccount = SUBSTRING(@O_cOutputAccount,1,@iDestPos-1) 					+SUBSTRING(@I_cTemplateAccount,@iMaskPos,1) 					+SUBSTRING(@O_cOutputAccount,@iDestPos+1,255) 		select @iMaskPos = CHARINDEX('?', @I_cTemplateMask, @iMaskPos+1),  			@iDestPos = CHARINDEX('?', @I_cOutputMask, @iDestPos+1) 	end 	select @iMaskPos = CHARINDEX('*', @I_cTemplateMask, 0), @iDestPos = CHARINDEX('*', @I_cOutputMask, 0) 	while (@iMaskPos > 0) and (@iDestPos > 0) 	begin 		select @O_cOutputAccount = SUBSTRING(@O_cOutputAccount,1,@iDestPos-1) 					+SUBSTRING(@I_cTemplateAccount,@iMaskPos,1) 					+SUBSTRING(@O_cOutputAccount,@iDestPos+1,255) 		select @iMaskPos = CHARINDEX('*', @I_cTemplateMask, @iMaskPos+1),  			@iDestPos = CHARINDEX('*', @I_cOutputMask, @iDestPos+1) 	end 	select @O_cOutputAccount = RTRIM(@O_cOutputAccount) /* debug only ... select @msgString = ('IC_Debug - Templ:'+rtrim(@I_cTemplateMask) 					+' Templ_Ac:'+rtrim(@I_cTemplateAccount) 					+' Mask:'+rtrim(@I_cOutputMask) 					+' Dest:'+rtrim(@O_cOutputAccount)) exec master.dbo.xp_logevent 50001,@msgString ... */ end if @iStatus <> 0 or @O_iErrorState <> 0 begin 	if @tTransaction = 1 		rollback transaction end else if @tTransaction = 1 	commit transaction return (@iStatus)  
GO
GRANT EXECUTE ON  [dbo].[ncBuildAccountString] TO [DYNGRP]
GO
GRANT EXECUTE ON  [dbo].[ncBuildAccountString] TO [public]
GO

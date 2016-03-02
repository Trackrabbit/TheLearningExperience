SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[smUserWorkCopy1]  @USERID 		char(30),  @USERID2 		char(30),  @O_iErrorState 		int = NULL  output with encryption as set transaction isolation level read uncommitted set nocount on declare  @tTransaction	tinyint, @tLoop		tinyint select 	@O_iErrorState 	 = 0 if @@trancount = 0    begin select @tTransaction = 1 begin transaction end while ( @tLoop is NULL ) begin select @tLoop = 1 if	@USERID 		is NULL or @USERID2 		is NULL  begin select @O_iErrorState = 1		 break end  delete SY01990 where ScbOwnerID = @USERID2 if @@error <> 0  begin select @O_iErrorState = 2	 break end  if @O_iErrorState <> 0 break insert into SY01990 (ScbGroupType,ScbOwnerID,ScbNodeID,ScbParentNodeID,ScbShortcutType,ScbSubType, ScbDisplayName,ScbShortcutKey,ScbTargetStringOne,ScbTargetStringTwo,ScbTargetStringThree,ScbTargetLongOne, ScbTargetLongTwo,ScbTargetLongThree,ScbTargetLongFour,ScbTargetLongFive,ScbCompanyID) select  ScbGroupType,@USERID2,ScbNodeID,ScbParentNodeID,ScbShortcutType,ScbSubType, ScbDisplayName,ScbShortcutKey,ScbTargetStringOne,ScbTargetStringTwo,ScbTargetStringThree,ScbTargetLongOne, ScbTargetLongTwo,ScbTargetLongThree,ScbTargetLongFour,ScbTargetLongFive,ScbCompanyID from SY01990 where  ScbOwnerID = @USERID if @@error <> 0  begin select @O_iErrorState = 3	 break end  if @O_iErrorState <> 0 break end  if @O_iErrorState <> 0 begin if @tTransaction = 1 rollback transaction end else if @tTransaction = 1 begin commit transaction end return  
GO
GRANT EXECUTE ON  [dbo].[smUserWorkCopy1] TO [DYNGRP]
GO

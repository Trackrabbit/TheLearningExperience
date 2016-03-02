SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 Create Procedure [dbo].[SVC_TS_GetEmailPager]  (  @TechID char(11),  @Type smallint,  @Address varchar(99) OUTPUT  ) As select @Address = CASE  when @Type = 0 then TECHEMAIL  when @Type = 1 then TECHEMAIL2  when @Type = 2 then PAGER1  when @Type = 3 then PAGER2  END  from SVC00100 where TECHID = @TechID  return     
GO
GRANT EXECUTE ON  [dbo].[SVC_TS_GetEmailPager] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create function [dbo].[DYN_FUNC_SOP_Status] (@iIntEnum integer) returns varchar(100) as  begin  declare @oVarcharValuestring varchar(100) if @iIntEnum = 1  select @oVarcharValuestring =    rtrim(SQL_MSG)    from     DYNAMICS.dbo.MESSAGES    WITH (NOLOCK)    where     MSGNUM = 17212    and         Language_ID =          0 else if @iIntEnum = 8  select @oVarcharValuestring =    rtrim(SQL_MSG)    from     DYNAMICS.dbo.MESSAGES    WITH (NOLOCK)    where     MSGNUM = 6916    and          Language_ID =          0 else if @iIntEnum = 9  select @oVarcharValuestring =    rtrim(SQL_MSG)    from     DYNAMICS.dbo.MESSAGES    WITH (NOLOCK)    where     MSGNUM = 5966    and          Language_ID =          0 else  set @oVarcharValuestring =   (select ISNULL(SOPSTSDESCR,'') from SOP40101 where SOPSTATUS = @iIntEnum)   RETURN(@oVarcharValuestring)  END  
GO
GRANT EXECUTE ON  [dbo].[DYN_FUNC_SOP_Status] TO [DYNGRP]
GO

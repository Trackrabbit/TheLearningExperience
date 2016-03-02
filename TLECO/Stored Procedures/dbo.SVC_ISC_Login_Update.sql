SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[SVC_ISC_Login_Update]   AS declare @CUSTNMBR char(31) declare @ADRSCODE char(15) declare @Temp char(201) declare @Master_Type char(3)  declare  CheckLine CURSOR for select CUSTNMBR,ADRSCODE,USERDEF2  from RM00101 where 'USERDEF2' <> '' open CheckLine fetch next from CheckLine into @CUSTNMBR,@ADRSCODE,@Temp  while (@@FETCH_status <> -1)  begin  if exists(select * from  SY01200 where ((Master_ID = @CUSTNMBR)  and (ADRSCODE= @ADRSCODE)   and (Master_Type= 'CUS')   and (INET6='')))   begin   update SY01200   set  INET6=@Temp  where ((Master_ID = @CUSTNMBR)and (ADRSCODE= @ADRSCODE)   and (Master_Type= 'CUS')and (INET6=''))  end else  begin  if not exists (select * from  SY01200 where ((Master_ID = @CUSTNMBR)  and (ADRSCODE= @ADRSCODE)   and (Master_Type= 'CUS')))  insert SY01200 (Master_Type,Master_ID,ADRSCODE,INET6,INETINFO)  values('CUS',@CUSTNMBR, @ADRSCODE,@Temp,'')  end  fetch next from CheckLine into @CUSTNMBR,@ADRSCODE,@Temp   end deallocate CheckLine    
GO
GRANT EXECUTE ON  [dbo].[SVC_ISC_Login_Update] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROCEDURE [dbo].[PP_Remove_History] @userdid char(15) AS insert into PP400004   select @userdid, 'Allocator Header History',2, b.PP_Document_Number,'','',''  from PP100100 b where b.PP_Document_Number not in    (select DTAControlNum  from GL10000)  and b.PP_Document_Number not in   (select G2.ORCTRNUM from GL20000 G2 where G2.ACTINDX = b.ACTINDX or G2.ACTINDX = b.OFFACCT)  and b.PP_Document_Number not in   (select G3.ORCTRNUM from GL30000 G3 where G3.ACTINDX = b.ACTINDX or G3.ACTINDX = b.OFFACCT)  and b.PP_Document_Number not in    (select c.PP_Document_Number from PP400004 c where c.USERID = @userdid    and c.FILENAME = 'Allocator Header History'   and c.PP_Error_Check_Link = 2 and c.PP_Document_Number = b.PP_Document_Number)      delete PP100100 where PP_Document_Number not in   (select DTAControlNum  from GL10000)  and PP_Document_Number not in   (select G2.ORCTRNUM from GL20000 G2 where G2.ACTINDX = PP100100.ACTINDX or G2.ACTINDX = PP100100.OFFACCT)  and PP_Document_Number not in   (select G3.ORCTRNUM from GL30000 G3 where G3.ACTINDX = PP100100.ACTINDX or G3.ACTINDX = PP100100.OFFACCT)   
GO
GRANT EXECUTE ON  [dbo].[PP_Remove_History] TO [DYNGRP]
GO

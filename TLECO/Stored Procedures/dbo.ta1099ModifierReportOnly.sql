SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
create procedure [dbo].[ta1099ModifierReportOnly] @l_start datetime, @l_end datetime, @O_SQL_Error_State int = null  output with encryption as delete TA1099 insert into TA1099 select distinct a.VENDORID, a.APTVCHNM, a.APPLDAMT from PM30300 a, PM30200 b, PM00200 c where 	a.APTVCHNM = b.VCHRNMBR and a.DOCTYPE = 6 and b.DOCTYPE = 1 and a.DOCDATE >= @l_start and a.DOCDATE <= @l_end and ( a.TEN99AMNT = 0 or (a.DEFTEN99TYPE = 1 and a.TEN99AMNT <> 0) ) and a.VENDORID = c.VENDORID and c.TEN99TYPE > 1 union select distinct a.VENDORID, a.APTVCHNM, a.APPLDAMT from PM30300 a, PM20000 b, PM00200 c where 	a.APTVCHNM = b.VCHRNMBR and a.DOCTYPE = 6 and  b.DOCTYPE = 1 and  a.DOCDATE >= @l_start and a.DOCDATE <= @l_end and ( a.TEN99AMNT = 0 or (a.DEFTEN99TYPE = 1 and a.TEN99AMNT <> 0) ) and a.VENDORID = c.VENDORID and c.TEN99TYPE > 1 order by  a.APTVCHNM 
GO
GRANT EXECUTE ON  [dbo].[ta1099ModifierReportOnly] TO [DYNGRP]
GO

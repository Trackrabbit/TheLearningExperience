SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create function [dbo].[aagMLCancelled]() returns tinyint as begin  if not exists(select * from AAG00315 where USERID = SYSTEM_USER) return 1 return 0 end    
GO
GRANT EXECUTE ON  [dbo].[aagMLCancelled] TO [DYNGRP]
GO

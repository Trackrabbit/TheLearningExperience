SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Get_Next_Note_Index] @Index numeric(19,5) output as update DYNAMICS..SY01500  set @Index = NOTEINDX, NOTEINDX = NOTEINDX + 1.0  where INTERID = DB_NAME()    
GO
GRANT EXECUTE ON  [dbo].[SVC_Get_Next_Note_Index] TO [DYNGRP]
GO

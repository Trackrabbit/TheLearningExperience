SET QUOTED_IDENTIFIER ON
GO
SET ANSI_NULLS ON
GO
 create procedure [dbo].[SVC_Recalc_All_Cont_HDRs] as declare @CONSTS smallint,  @CONTNBR char(11) declare Cont_HDR_Cursor cursor for select CONSTS, CONTNBR from SVC00600 open Cont_HDR_Cursor fetch next from Cont_HDR_Cursor into @CONSTS,@CONTNBR  while (@@FETCH_STATUS = 0)   BEGIN  exec SVC_Update_Contract_Total @CONSTS,@CONTNBR   exec SVC_Set_Contract_Amount_Totals @CONSTS,@CONTNBR   fetch next from Cont_HDR_Cursor into @CONSTS,@CONTNBR   END close Cont_HDR_Cursor deallocate Cont_HDR_Cursor    
GO
GRANT EXECUTE ON  [dbo].[SVC_Recalc_All_Cont_HDRs] TO [DYNGRP]
GO

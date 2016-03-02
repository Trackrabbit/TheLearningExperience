SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE     procedure [dbo].[aagGetPostingSetupStatusAccLink] @O_fOkayToLink  tinyint = 0 output as if NOT EXISTS (select TRXSOURC from SY02300 where SERIES >1 and SERIES < 6 and PSTOGLHW = 1)  begin  set @O_fOkayToLink = 1  return  end    
GO
GRANT EXECUTE ON  [dbo].[aagGetPostingSetupStatusAccLink] TO [DYNGRP]
GO

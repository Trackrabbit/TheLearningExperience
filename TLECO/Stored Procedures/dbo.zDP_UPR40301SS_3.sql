SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_UPR40301SS_3] (@REVIEWSETUPCODE_I char(31), @JOBTITLE char(7)) AS  set nocount on SELECT TOP 1  JOBTITLE, DSCRIPTN, EEOCLASS_I, FLSASTATUS, REPORTSTOPOS, REVIEWSETUPCODE_I, SKILLSETNUMBER_I, CHANGEBY_I, CHANGEDATE_I, NOTEINDX, NOTEINDX2, DEX_ROW_ID, TXTFIELD FROM .UPR40301 WHERE REVIEWSETUPCODE_I = @REVIEWSETUPCODE_I AND JOBTITLE = @JOBTITLE ORDER BY REVIEWSETUPCODE_I ASC, JOBTITLE ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_UPR40301SS_3] TO [DYNGRP]
GO

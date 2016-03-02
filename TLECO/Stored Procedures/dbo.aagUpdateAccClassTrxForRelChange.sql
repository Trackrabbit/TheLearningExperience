SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[aagUpdateAccClassTrxForRelChange]  @I_cTrxDimRelTab char(30),   @I_fDelete smallint as  begin  declare  @aaTrxDimID  int,  @aaRelTrxDimID int,  @aaTrxDimRelType smallint  if @I_fDelete = 0  begin  exec ('declare aaDimRel cursor fast_forward FOR  select temptab.aaTrxDimID,  temptab.aaRelTrxDimID, temptab.aaTrxDimRelType   from ' +  @I_cTrxDimRelTab + ' temptab, AAG00405   where temptab.aaTrxDimRelType <> AAG00405.aaTrxDimRelType   and temptab.aaTrxDimID = AAG00405.aaTrxDimID   and temptab.aaRelTrxDimID = AAG00405.aaRelTrxDimID   and temptab.aaTrxDimRelType <> 1')  open aaDimRel  fetch next from aaDimRel into @aaTrxDimID, @aaRelTrxDimID, @aaTrxDimRelType  WHILE @@fetch_status = 0  begin   print 'dsd'   end   end end    
GO
GRANT EXECUTE ON  [dbo].[aagUpdateAccClassTrxForRelChange] TO [DYNGRP]
GO

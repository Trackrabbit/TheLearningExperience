SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROCEDURE [dbo].[sopGetPickingReportPrintStatus] @SOPNum char(21), @SOPType smallint, @Printed tinyint output   AS  if (select count(BULKPICKPRNT + INDPICKPRNT)  from SOP10200   where SOPNUMBE = @SOPNum  and SOPTYPE = @SOPType  and DROPSHIP = 0  and (QUANTITY - QTYTBAOR - QTYCANCE - QTYPRBAC - QTYPRORD - QTYPRINV) > 0  and (BULKPICKPRNT + INDPICKPRNT) = 0) = 0    begin   set @Printed = 1  end else  begin  set @Printed = 0  end    
GO
GRANT EXECUTE ON  [dbo].[sopGetPickingReportPrintStatus] TO [DYNGRP]
GO

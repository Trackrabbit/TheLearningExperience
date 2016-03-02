SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create      procedure [dbo].[aagUpdateReportTableTempforDDR]  as begin  delete AAG50000  delete AAG50001  delete AAG50002 end     
GO
GRANT EXECUTE ON  [dbo].[aagUpdateReportTableTempforDDR] TO [DYNGRP]
GO

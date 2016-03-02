SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[NDS_MC_SOP_Distributions](@DOCNUM varchar(20), @RATE varchar(20), @div int) AS
if (@div = 0)
begin
	update SOP10102
	set DEBITAMT = ORDBTAMT * @RATE,  CRDTAMNT = ORCRDAMT * @RATE
	where SOPNUMBE = @DOCNUM
end
else
begin
	update SOP10102
	set DEBITAMT = ORDBTAMT / @RATE, CRDTAMNT = ORCRDAMT / @RATE
	where SOPNUMBE = @DOCNUM
end
GO
GRANT EXECUTE ON  [dbo].[NDS_MC_SOP_Distributions] TO [DYNGRP]
GO

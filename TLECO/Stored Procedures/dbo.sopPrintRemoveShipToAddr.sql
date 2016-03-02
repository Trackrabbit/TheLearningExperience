SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 create  PROCEDURE [dbo].[sopPrintRemoveShipToAddr]   @OSTableName varchar(31),   @PrintSequence int,  @I_cSOPNumber char(21),  @I_tSOPTYPE tinyint,  @InfoString2 varchar(51),  @sItemNumber varchar(31),  @InfoString1 varchar(51),  @sBreakField2 smallint,  @fIsDefaultBin tinyint,  @nLineSeq int,  @nCompSeq int,  @nIndPickTicketLineType int AS  DECLARE @sql_statement as varchar(8000)   SET @sql_statement = ''  SET @sql_statement = @sql_statement + 'delete from ' + @OSTableName SET @sql_statement = @sql_statement + ' where DOCPRINTSEQ = ' + str(@PrintSequence) +  ' and SOPTYPE = ' + str(@I_tSOPTYPE) + ' and SOPNUMBE = ' + @I_cSOPNumber  SET @sql_statement = @sql_statement + ' and InfoString2 = ' + @InfoString2 + ' and ITEMNMBR = ' + @sItemNumber + ' and InfoString1 = ' + @InfoString1 + ' and BRKFLD2 = ' + str(@sBreakField2)  SET @sql_statement = @sql_statement + ' and ISDEFAULTBIN = ' + str(@fIsDefaultBin) + ' and LNITMSEQ = ' + str(@nLineSeq) + ' and CMPNTSEQ = ' + str(@nCompSeq) + ' and INDPICKTICKETLINETYPE = ' + str(@nIndPickTicketLineType)  exec (@sql_statement)  set nocount on   
GO
GRANT EXECUTE ON  [dbo].[sopPrintRemoveShipToAddr] TO [DYNGRP]
GO

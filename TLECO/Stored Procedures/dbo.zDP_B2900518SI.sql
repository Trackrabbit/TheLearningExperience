SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_B2900518SI] (@BSSI_DocID char(33), @BSSI_Lease_Loan_Number char(17), @DOCNUMBR char(21), @RMDTYPAL smallint, @ITEMNMBR char(31), @BSSI_AssetID char(15), @BSSI_AssetSuffix smallint, @BSSI_AssetIndex int, @BSSI_DocDesc char(101), @SERLNMBR char(21), @LNITMSEQ int, @Status smallint, @USERID char(15), @DATE1 datetime, @DEX_ROW_ID int OUT) AS /* 12.00.0270.000 */ set nocount on BEGIN INSERT INTO .B2900518 (BSSI_DocID, BSSI_Lease_Loan_Number, DOCNUMBR, RMDTYPAL, ITEMNMBR, BSSI_AssetID, BSSI_AssetSuffix, BSSI_AssetIndex, BSSI_DocDesc, SERLNMBR, LNITMSEQ, Status, USERID, DATE1) VALUES ( @BSSI_DocID, @BSSI_Lease_Loan_Number, @DOCNUMBR, @RMDTYPAL, @ITEMNMBR, @BSSI_AssetID, @BSSI_AssetSuffix, @BSSI_AssetIndex, @BSSI_DocDesc, @SERLNMBR, @LNITMSEQ, @Status, @USERID, @DATE1) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_B2900518SI] TO [DYNGRP]
GO

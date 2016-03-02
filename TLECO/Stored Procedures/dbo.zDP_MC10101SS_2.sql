SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_MC10101SS_2] (@USERID char(15), @PSTGSTUS smallint, @RMDTYPAL smallint, @DOCNUMBR char(21), @SPCLDIST smallint, @CUSTNMBR char(15), @APTODCTY smallint, @APTODCNM char(21), @MCSTRUCT_1 char(15), @DISTTYPE smallint, @DSTINDX int) AS  set nocount on SELECT TOP 1  USERID, PSTGSTUS, RMDTYPAL, DOCNUMBR, APTODCTY, APTODCNM, SEQNUMBR, DISTTYPE, DSTINDX, TRXSORCE, POSTED, POSTEDDT, CHANGED, CUSTNMBR, DEBITAMT, CRDTAMNT, ORCRDAMT, ORDBTAMT, MCSTRUCT_1, MCSTRUCT_2, MCSTRUCT_3, MCSTRUCT_4, MCSTRUCT_5, MCSTRUCT_6, MCSTRUCT_7, MCSTRUCT_8, MCSTRUCT_9, MCSTRUCT_10, MCSTRUCT_11, MCSTRUCT_12, MCSTRUCT_13, MCSTRUCT_14, SPCLDIST, DEX_ROW_ID FROM .MC10101 WHERE USERID = @USERID AND PSTGSTUS = @PSTGSTUS AND RMDTYPAL = @RMDTYPAL AND DOCNUMBR = @DOCNUMBR AND SPCLDIST = @SPCLDIST AND CUSTNMBR = @CUSTNMBR AND APTODCTY = @APTODCTY AND APTODCNM = @APTODCNM AND MCSTRUCT_1 = @MCSTRUCT_1 AND DISTTYPE = @DISTTYPE AND DSTINDX = @DSTINDX ORDER BY USERID ASC, PSTGSTUS ASC, RMDTYPAL ASC, DOCNUMBR ASC, SPCLDIST ASC, CUSTNMBR ASC, APTODCTY ASC, APTODCNM ASC, MCSTRUCT_1 ASC, DISTTYPE ASC, DSTINDX ASC, DEX_ROW_ID ASC set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_MC10101SS_2] TO [DYNGRP]
GO

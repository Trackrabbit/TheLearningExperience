SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_POP10800SI] (@POPRCTNM char(17), @PONUMBER char(17), @PMNTNMBR char(21), @APPLDAMT numeric(19,5), @ORAPPAMT numeric(19,5), @DISTKNAM numeric(19,5), @ORDISTKN numeric(19,5), @PrepaymentAccountIndex int, @PrepaymentAmount numeric(19,5), @OriginatingPrepaymentAmt numeric(19,5), @PSTGSTUS smallint, @BACHNUMB char(15), @BCHSOURC char(15), @TRXSORCE char(13), @GLPOSTDT datetime, @VOIDED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .POP10800 (POPRCTNM, PONUMBER, PMNTNMBR, APPLDAMT, ORAPPAMT, DISTKNAM, ORDISTKN, PrepaymentAccountIndex, PrepaymentAmount, OriginatingPrepaymentAmt, PSTGSTUS, BACHNUMB, BCHSOURC, TRXSORCE, GLPOSTDT, VOIDED) VALUES ( @POPRCTNM, @PONUMBER, @PMNTNMBR, @APPLDAMT, @ORAPPAMT, @DISTKNAM, @ORDISTKN, @PrepaymentAccountIndex, @PrepaymentAmount, @OriginatingPrepaymentAmt, @PSTGSTUS, @BACHNUMB, @BCHSOURC, @TRXSORCE, @GLPOSTDT, @VOIDED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_POP10800SI] TO [DYNGRP]
GO

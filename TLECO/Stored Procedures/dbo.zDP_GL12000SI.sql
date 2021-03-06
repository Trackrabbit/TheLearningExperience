SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_GL12000SI] (@BCHSOURC char(15), @BACHNUMB char(15), @JRNENTRY int, @BUDGETID char(15), @REFRENCE char(31), @TRXDATE datetime, @PSTGSTUS smallint, @LASTUSER char(15), @LSTDTEDT datetime, @USWHPSTD char(15), @SOURCDOC char(11), @TRXSORCE char(13), @ERRSTATE int, @GLHDRVAL binary(4), @GLHDRMSG binary(4), @GLHDRMS2 binary(4), @NOTEINDX numeric(19,5), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .GL12000 (BCHSOURC, BACHNUMB, JRNENTRY, BUDGETID, REFRENCE, TRXDATE, PSTGSTUS, LASTUSER, LSTDTEDT, USWHPSTD, SOURCDOC, TRXSORCE, ERRSTATE, GLHDRVAL, GLHDRMSG, GLHDRMS2, NOTEINDX) VALUES ( @BCHSOURC, @BACHNUMB, @JRNENTRY, @BUDGETID, @REFRENCE, @TRXDATE, @PSTGSTUS, @LASTUSER, @LSTDTEDT, @USWHPSTD, @SOURCDOC, @TRXSORCE, @ERRSTATE, @GLHDRVAL, @GLHDRMSG, @GLHDRMS2, @NOTEINDX) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_GL12000SI] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00999SI] (@SEQUENCE1 numeric(19,5), @CALLNBR char(11), @EQUIPID int, @ORDDOCID char(15), @CONTNBR char(11), @Quote_Contract_Number char(11), @Template_Contract_Number char(11), @INVDOCID char(15), @RETDOCID char(15), @RTV_Number char(15), @WORKORDNUM char(11), @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00999 (SEQUENCE1, CALLNBR, EQUIPID, ORDDOCID, CONTNBR, Quote_Contract_Number, Template_Contract_Number, INVDOCID, RETDOCID, RTV_Number, WORKORDNUM) VALUES ( @SEQUENCE1, @CALLNBR, @EQUIPID, @ORDDOCID, @CONTNBR, @Quote_Contract_Number, @Template_Contract_Number, @INVDOCID, @RETDOCID, @RTV_Number, @WORKORDNUM) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00999SI] TO [DYNGRP]
GO

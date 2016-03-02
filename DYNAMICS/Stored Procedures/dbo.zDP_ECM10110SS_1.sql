SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM10110SS_1] (@CompanyID int, @ReqID char(23), @SequenceID int) AS  set nocount on SELECT TOP 1  CompanyID, ReqID, SequenceID, Authorized, ERRCODE, DEX_ROW_ID FROM .ECM10110 WHERE CompanyID = @CompanyID AND ReqID = @ReqID AND SequenceID = @SequenceID ORDER BY CompanyID ASC, ReqID ASC, SequenceID ASC set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10110SS_1] TO [DYNGRP]
GO

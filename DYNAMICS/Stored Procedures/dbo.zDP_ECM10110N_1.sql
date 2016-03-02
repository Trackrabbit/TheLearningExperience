SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM10110N_1] (@BS int, @CompanyID int, @ReqID char(23), @SequenceID int, @CompanyID_RS int, @ReqID_RS char(23), @SequenceID_RS int, @CompanyID_RE int, @ReqID_RE char(23), @SequenceID_RE int) AS  set nocount on IF @CompanyID_RS IS NULL BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, Authorized, ERRCODE, DEX_ROW_ID FROM .ECM10110 WHERE ( CompanyID = @CompanyID AND ReqID = @ReqID AND SequenceID > @SequenceID OR CompanyID = @CompanyID AND ReqID > @ReqID OR CompanyID > @CompanyID ) ORDER BY CompanyID ASC, ReqID ASC, SequenceID ASC END ELSE IF @CompanyID_RS = @CompanyID_RE BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, Authorized, ERRCODE, DEX_ROW_ID FROM .ECM10110 WHERE CompanyID = @CompanyID_RS AND ReqID BETWEEN @ReqID_RS AND @ReqID_RE AND SequenceID BETWEEN @SequenceID_RS AND @SequenceID_RE AND ( CompanyID = @CompanyID AND ReqID = @ReqID AND SequenceID > @SequenceID OR CompanyID = @CompanyID AND ReqID > @ReqID OR CompanyID > @CompanyID ) ORDER BY CompanyID ASC, ReqID ASC, SequenceID ASC END ELSE BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, Authorized, ERRCODE, DEX_ROW_ID FROM .ECM10110 WHERE CompanyID BETWEEN @CompanyID_RS AND @CompanyID_RE AND ReqID BETWEEN @ReqID_RS AND @ReqID_RE AND SequenceID BETWEEN @SequenceID_RS AND @SequenceID_RE AND ( CompanyID = @CompanyID AND ReqID = @ReqID AND SequenceID > @SequenceID OR CompanyID = @CompanyID AND ReqID > @ReqID OR CompanyID > @CompanyID ) ORDER BY CompanyID ASC, ReqID ASC, SequenceID ASC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10110N_1] TO [DYNGRP]
GO

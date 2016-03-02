SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS OFF
GO
 CREATE PROC [dbo].[zDP_ECM10001L_1] (@CompanyID_RS int, @ReqID_RS char(23), @SequenceID_RS int, @CompanyID_RE int, @ReqID_RE char(23), @SequenceID_RE int) AS  set nocount on IF @CompanyID_RS IS NULL BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, PONumber, Item, GenericDescription, ReqVendor, RequiredBy, DEX_ROW_ID FROM .ECM10001 ORDER BY CompanyID DESC, ReqID DESC, SequenceID DESC END ELSE IF @CompanyID_RS = @CompanyID_RE BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, PONumber, Item, GenericDescription, ReqVendor, RequiredBy, DEX_ROW_ID FROM .ECM10001 WHERE CompanyID = @CompanyID_RS AND ReqID BETWEEN @ReqID_RS AND @ReqID_RE AND SequenceID BETWEEN @SequenceID_RS AND @SequenceID_RE ORDER BY CompanyID DESC, ReqID DESC, SequenceID DESC END ELSE BEGIN SELECT TOP 25  CompanyID, ReqID, SequenceID, PONumber, Item, GenericDescription, ReqVendor, RequiredBy, DEX_ROW_ID FROM .ECM10001 WHERE CompanyID BETWEEN @CompanyID_RS AND @CompanyID_RE AND ReqID BETWEEN @ReqID_RS AND @ReqID_RE AND SequenceID BETWEEN @SequenceID_RS AND @SequenceID_RE ORDER BY CompanyID DESC, ReqID DESC, SequenceID DESC END set nocount off     
GO
GRANT EXECUTE ON  [dbo].[zDP_ECM10001L_1] TO [DYNGRP]
GO

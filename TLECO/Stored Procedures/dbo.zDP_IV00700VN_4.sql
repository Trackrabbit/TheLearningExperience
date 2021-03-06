SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_IV00700VN_4] (@BS int, @Status smallint, @ORDDOCID char(15), @Status_RS smallint, @ORDDOCID_RS char(15), @Status_RE smallint, @ORDDOCID_RE char(15)) AS  set nocount on IF @Status_RS IS NULL BEGIN SELECT TOP 25  ORDDOCID, ORDRDATE, PRMDATE, Status, SHIPMTHD, TRXLOCTN, VIALOCN, TRNSTLOC, CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, EMPLOYID, NOTEINDX, DEX_ROW_ID FROM .IV00700V WHERE ( Status = @Status AND ORDDOCID > @ORDDOCID OR Status > @Status ) ORDER BY Status ASC, ORDDOCID ASC END ELSE IF @Status_RS = @Status_RE BEGIN SELECT TOP 25  ORDDOCID, ORDRDATE, PRMDATE, Status, SHIPMTHD, TRXLOCTN, VIALOCN, TRNSTLOC, CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, EMPLOYID, NOTEINDX, DEX_ROW_ID FROM .IV00700V WHERE Status = @Status_RS AND ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND ( Status = @Status AND ORDDOCID > @ORDDOCID OR Status > @Status ) ORDER BY Status ASC, ORDDOCID ASC END ELSE BEGIN SELECT TOP 25  ORDDOCID, ORDRDATE, PRMDATE, Status, SHIPMTHD, TRXLOCTN, VIALOCN, TRNSTLOC, CUSTNAME, ADDRESS1, ADDRESS2, ADDRESS3, CITY, STATE, ZIPCODE, COUNTRY, EMPLOYID, NOTEINDX, DEX_ROW_ID FROM .IV00700V WHERE Status BETWEEN @Status_RS AND @Status_RE AND ORDDOCID BETWEEN @ORDDOCID_RS AND @ORDDOCID_RE AND ( Status = @Status AND ORDDOCID > @ORDDOCID OR Status > @Status ) ORDER BY Status ASC, ORDDOCID ASC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_IV00700VN_4] TO [DYNGRP]
GO

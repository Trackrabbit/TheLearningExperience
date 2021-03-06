SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_SVC00120SI] (@SVC_Document_Type smallint, @RCRDTYPE smallint, @DOCID char(15), @EQPLINE int, @LNITMSEQ int, @TECHID char(11), @Work_Type char(11), @STATIONID char(11), @EMPLOYID char(15), @PayCode char(7), @DEPRTMNT char(7), @JOBTITLE char(7), @STATECD char(3), @LOCALTAX char(7), @SUTASTAT char(3), @WRKRCOMP char(7), @SHFTCODE char(7), @TRXHRUNT int, @STRTDATE datetime, @STRTTIME datetime, @ENDDATE datetime, @ENDTIME datetime, @POSTED tinyint, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .SVC00120 (SVC_Document_Type, RCRDTYPE, DOCID, EQPLINE, LNITMSEQ, TECHID, Work_Type, STATIONID, EMPLOYID, PayCode, DEPRTMNT, JOBTITLE, STATECD, LOCALTAX, SUTASTAT, WRKRCOMP, SHFTCODE, TRXHRUNT, STRTDATE, STRTTIME, ENDDATE, ENDTIME, POSTED) VALUES ( @SVC_Document_Type, @RCRDTYPE, @DOCID, @EQPLINE, @LNITMSEQ, @TECHID, @Work_Type, @STATIONID, @EMPLOYID, @PayCode, @DEPRTMNT, @JOBTITLE, @STATECD, @LOCALTAX, @SUTASTAT, @WRKRCOMP, @SHFTCODE, @TRXHRUNT, @STRTDATE, @STRTTIME, @ENDDATE, @ENDTIME, @POSTED) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_SVC00120SI] TO [DYNGRP]
GO

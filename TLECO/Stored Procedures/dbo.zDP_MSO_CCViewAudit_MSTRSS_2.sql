SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MSO_CCViewAudit_MSTRSS_2] (@MSO_CCViewAuditUser char(15), @MSO_AccessDate datetime, @MSO_AccessTime datetime, @CUSTNMBR char(15)) AS /* 12.00.0311.000 */ set nocount on SELECT TOP 1  MSO_CCViewAuditUser, MSO_AccessDate, MSO_AccessTime, MSO_CCViewAuditWindow, CUSTNMBR, MSO_CardNumberPABP, MSO_TableName, MSO_StringKey1, MSO_StringKey2, MSO_IntKey1, MSO_IntKey2, DEX_ROW_ID FROM .MSO_CCViewAudit_MSTR WHERE MSO_CCViewAuditUser = @MSO_CCViewAuditUser AND MSO_AccessDate = @MSO_AccessDate AND MSO_AccessTime = @MSO_AccessTime AND CUSTNMBR = @CUSTNMBR ORDER BY MSO_CCViewAuditUser ASC, MSO_AccessDate ASC, MSO_AccessTime ASC, CUSTNMBR ASC, DEX_ROW_ID ASC set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MSO_CCViewAudit_MSTRSS_2] TO [DYNGRP]
GO

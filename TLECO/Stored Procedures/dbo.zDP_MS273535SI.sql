SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROC [dbo].[zDP_MS273535SI] (@NDS_Date datetime, @NDS_Time datetime, @NDS_Stage smallint, @MSO_Doc_Number char(21), @NDS_Doc_Number2 char(21), @NDS_ErrorCode smallint, @NDS_Failure_Description1 char(255), @NDS_Failure_Description2 char(255), @DEX_ROW_ID int OUT) AS /* 12.00.0311.000 */ set nocount on BEGIN INSERT INTO .MS273535 (NDS_Date, NDS_Time, NDS_Stage, MSO_Doc_Number, NDS_Doc_Number2, NDS_ErrorCode, NDS_Failure_Description1, NDS_Failure_Description2) VALUES ( @NDS_Date, @NDS_Time, @NDS_Stage, @MSO_Doc_Number, @NDS_Doc_Number2, @NDS_ErrorCode, @NDS_Failure_Description1, @NDS_Failure_Description2) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off 
GO
GRANT EXECUTE ON  [dbo].[zDP_MS273535SI] TO [DYNGRP]
GO

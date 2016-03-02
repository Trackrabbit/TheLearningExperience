SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
  CREATE PROCEDURE [dbo].[hrSysDoesHrSysExist] @O_iOUT_TableExists tinyint = NULL output AS if exists (select * from sysobjects where id = object_id('dbo.HR2APP12') and sysstat & 0xf = 3) begin select @O_iOUT_TableExists = 1 end else begin select @O_iOUT_TableExists = 0 end   
GO
GRANT EXECUTE ON  [dbo].[hrSysDoesHrSysExist] TO [DYNGRP]
GO

SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[MSO_TSCGetEmptyValue] (@xtype tinyint) 
      RETURNS varchar(22)  
AS BEGIN 
      RETURN  
            '''' + --PREFIX WITH SINGLE QUOTE  
            CASE  WHEN @xtype = 35  THEN  ''    --text  
                        WHEN @xtype = 167 THEN  ''    --varchar 
                        WHEN @xtype = 175 THEN  ''    --char  
                        WHEN @xtype = 48  THEN  '0'   --tinyint  
                        WHEN @xtype = 52  THEN  '0'   --smallint  
                        WHEN @xtype = 56  THEN  '0'   --int  
                        WHEN @xtype = 108 THEN  '0'   --numeric  
                        WHEN @xtype = 173 THEN  '0'   --binary  
                        WHEN @xtype = 61  THEN  '1/1/1900 12:00:00 AM' --datetime  
                        ELSE ''  
            END +  
            '''' --SUFFIX WITH SINGLE QUOTE  
END  
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCGetEmptyValue] TO [DYNGRP]
GO

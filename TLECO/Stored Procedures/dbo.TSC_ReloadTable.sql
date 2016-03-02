SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[TSC_ReloadTable]
      @table VARCHAR(251),
      @result BIT OUTPUT
AS BEGIN    
      declare     @temp VARCHAR(255),
                  @backup VARCHAR(255),
                  @cmd  VARCHAR(8000),
                  @tran varchar(20)
      SET @table  = RTRIM(LTRIM(@table))
      SET @temp   = @table + '_TMP'
      SET @backup = @table + '_NBK'
      SET @tran = 'NodusReloadTable'
      SET @result = 0 -- False
      BEGIN TRAN @tran
      IF (EXISTS (SELECT * FROM sysobjects WHERE name = @table AND type = 'U') AND 
      EXISTS(SELECT * FROM sysobjects WHERE name = @temp AND type = 'U'))
      BEGIN
            SET @cmd    = [dbo].[MSO_TSCCopyTable] (
                                    --[SRC table]
                                    @temp,
                                    --[DST table]
                                    @table,
                                    --[SRC column] -> [DST column]
                                    '
                                          [MSO_CardNumber]  -> [MSO_CardNumberPABP];
                                          [MSO_DESC]              -> [MSO_DESC_PABP]; 
                                          [MSO_DESC1]             -> [MSO_DESC1_PABP]; 
                                          [MSO_DESC2]             -> [MSO_DESC2_PABP]; 
                                          [MSO_DESC3]             -> [MSO_DESC3_PABP]; 
                                          [MSO_DESC4]             -> [MSO_DESC4_PABP]; 
                                          [MSO_FieldName]             -> [MSO_Fieldname1]; 
                                    '
                              )
            EXEC(@cmd)
            IF @@ERROR <> 0 BEGIN 
                  ROLLBACK TRAN @tran
                  PRINT 'Reloading the table ' + @table + ' failed at moving data.'
                  RETURN            
            END
            -- Rename @temp to @backup
            IF EXISTS (SELECT * FROM sysobjects WHERE name = @backup and type = 'U') BEGIN
                  -- drop the current @backup
                  EXEC ('DROP TABLE ' + @backup)
                  IF @@ERROR <> 0 BEGIN 
                        ROLLBACK TRAN @tran
                        PRINT 'Reloading the table ' + @table + ' failed at dropping backup table.'
                        RETURN            
                  END
            END
            EXEC('sp_rename ' + @temp + ', ' + @backup) 
            IF @@ERROR <> 0 BEGIN 
                  ROLLBACK TRAN @tran
                  PRINT 'Reloading the table ' + @table + ' failed at renaming temp table.'
                  RETURN            
            END
            COMMIT TRAN @tran
            SET @result = 1 -- True
      END
      ELSE BEGIN
            PRINT 'Sorry, the table ' + @table + ' was not repopulated because it does not exist. Did you run TSC?'
            ROLLBACK TRAN @tran
      END
      PRINT 'Reloading the table ' + @table + ' succeeded.'
END
GO
GRANT EXECUTE ON  [dbo].[TSC_ReloadTable] TO [DYNGRP]
GO

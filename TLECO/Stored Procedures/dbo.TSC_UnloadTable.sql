SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[TSC_UnloadTable] 
      @table VARCHAR(251),
      @result BIT OUTPUT     
AS BEGIN
      DECLARE     @temp varchar(255),
                  @backup varchar(255),
                  @tran varchar(20)
      SET @table  = LTRIM(RTRIM(@table))
      SET @temp   = @table + '_TMP'
      SET @backup = @table + '_NBK'
      SET @tran   = 'NodusUnloadTable'
      SET @result = 0 -- False
      BEGIN TRAN @tran
      IF NOT EXISTS (SELECT * FROM sysobjects WHERE name = @table and type = 'U') BEGIN
            PRINT 'The table ' + @table + ' does not exist.'
            IF EXISTS (SELECT * FROM sysobjects WHERE name = @temp and type = 'U') BEGIN
                  PRINT 'The table ' + @table + ' has already been unloaded.'
                  SET @result = 1 -- @table doesn't exist, but @temp exist. Assume it's unloaded already.
                  PRINT 'Unloading the table ' + @table + ' skipped.'
            END
            ELSE
                  PRINT 'Unloading the table ' + @table + ' failed.'
            ROLLBACK TRAN @tran 
            RETURN
      END
      -- @table exists ---
      --backup @temp first to @backup
      IF EXISTS (SELECT * FROM sysobjects WHERE name = @temp and type = 'U') BEGIN
            IF EXISTS (SELECT * FROM sysobjects WHERE name = @backup and type = 'U') BEGIN
                  -- drop the current @backup
                  EXEC ('DROP TABLE ' + @backup)
                  IF @@ERROR <> 0 BEGIN 
                        ROLLBACK TRAN @tran
                        PRINT 'Unloading the table ' + @table + ' failed at dropping backup table.'
                        RETURN            
                  END
            END
            -- Rename @temp to @backup
            EXEC('sp_rename ' + @temp + ', ' + @backup) 
            IF @@ERROR <> 0 BEGIN 
                  ROLLBACK TRAN @tran
                  PRINT 'Unloading the table ' + @table + ' failed at renaming temp table.'
                  RETURN            
            END
      END
      -- unload @table to @temp
      EXEC('SELECT * INTO '   + @temp + ' FROM ' + @table)
      IF @@ERROR <> 0 BEGIN 
            ROLLBACK TRAN @tran
            PRINT 'Unloading the table ' + @table + ' failed at moving data to temp table.'
            RETURN            
      END
      -- drop @table proc
      EXEC MSO_TSCDropProc @table
      IF @@ERROR <> 0 BEGIN 
            ROLLBACK TRAN @tran
            PRINT 'Unloading the table ' + @table + ' failed at dropping proc.'
            RETURN            
      END
      -- drop @table
      EXEC('DROP TABLE ' + @table)
      IF @@ERROR <> 0 BEGIN 
            ROLLBACK TRAN @tran
            PRINT 'Unloading the table ' + @table + ' failed at dropping table.'
            RETURN            
      END
      COMMIT TRAN @tran 
      Set @result = 1
      PRINT 'Unloading the table ' + @table + ' succeeded.'
END
GO
GRANT EXECUTE ON  [dbo].[TSC_UnloadTable] TO [DYNGRP]
GO

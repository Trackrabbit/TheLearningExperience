SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE FUNCTION [dbo].[MSO_TSCGetSourceColumnList] ( 
            @table_name_source  varchar(130), 
            @table_name_dest  varchar(130), 
            @map                    varchar(8000)
)
      RETURNS  varchar(8000)
AS BEGIN
      DECLARE     @out_columnList AS varchar(8000)
      SET @out_columnList = '';
      SELECT @out_columnList = @out_columnList  + 
                 CASE
                        --src column specified by @map exists in the src table &&
                        --dst column specified by @map exists in the dst table 
                        WHEN  CHARINDEX ('[' + dst.col + ']', @map) <> 0 and 
                                    EXISTS ( 
                                          select *  
                                          from syscolumns col 
                                          join sysobjects tbl on tbl.id = col.id 
                                          where 
                                                col.name = dbo.[MSO_TSCGetSourceColumnName](dst.col, @map) and 
                                                tbl.name = @table_name_source  
                                    )  
							THEN  
								CASE 
									WHEN src.isnullable > 0 THEN -- if source column doesn't allow null value 
										'[' + dbo.[MSO_TSCGetSourceColumnName](dst.col, @map) + ']' 
									ELSE -- if source column might has null value 
										'ISNULL([' + dbo.[MSO_TSCGetSourceColumnName](dst.col, @map) + '],' + dbo.[MSO_TSCGetEmptyValue](xtype) + ')'
								END	
                        --no mapping defined  
                        WHEN src.col is null  
							THEN 
								dbo.[MSO_TSCGetEmptyValue](xtype)  
                        --source column is directly mapped to destination column  
                        ELSE 
							CASE  
								WHEN src.isnullable > 0 THEN -- if source column doesn't allow null value 
									'ISNULL([' + src.col + '],' + dbo.[MSO_TSCGetEmptyValue](xtype) + ')' 
								ELSE -- if source column might has null value 
									'[' + src.col + ']'
							END 
                                    END  
                  + ',' 
      from ( 
                  select 
						name as col,  
						isnullable  
                  from syscolumns 
                  where id in(select id from sysobjects where name = @table_name_source) 
            ) as src  
      right join (  
                  select  
                        name        as col,  
                        colorder    as ord,  
                        xtype  
                  from syscolumns  
                  where id in(select id from sysobjects where name = @table_name_dest)  
            ) as dst on src.col = dst.col  
      where 
            dst.col not in ( 
                  select COLUMN_NAME as ColumnName 
                  from INFORMATION_SCHEMA.COLUMNS  
                  where 
                        TABLE_SCHEMA = 'dbo' and  
                        COLUMNPROPERTY(object_id(TABLE_NAME), COLUMN_NAME, 'IsIdentity') = 1 and 
                        TABLE_NAME = @table_name_dest 
            ) 
      order by dst.ord 
      IF len(@out_columnList) > 0 
            SET @out_columnList = left(@out_columnList, len(@out_columnList) - 1) 
      RETURN @out_columnList 
END   
GO
GRANT EXECUTE ON  [dbo].[MSO_TSCGetSourceColumnList] TO [DYNGRP]
GO

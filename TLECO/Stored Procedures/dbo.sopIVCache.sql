SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE proc [dbo].[sopIVCache] (@cBatchSource char(15)=NULL, @cBatchNumber char(15)=NULL, @cTempTableName char(30)=NULL, @iErrorState int=NULL output)  AS  DECLARE @String1 varchar(255), @String2 varchar(255), @String3 varchar(255), @String4 varchar(255), @String5 varchar(255), @String6 varchar(255), @String7 varchar(255), @String8 varchar(255) DECLARE @BigString varchar(2048)  BEGIN  SET nocount on SELECT @iErrorState = 0 IF @cBatchSource=NULL or @cBatchNumber=NULL BEGIN  SELECT @iErrorState = 21036  RETURN END  SELECT @String1 = 'INSERT INTO ' + @cTempTableName  SELECT @String2 = ' SELECT DISTINCT   IV00101.ITEMNMBR, IV00102.LOCNCODE, IV00101.ITEMTYPE, ' SELECT @String3 = '     IV00101.ITMTRKOP, IV00101.VCTNMTHD FROM SOP10200 ' SELECT @String4 = ' INNER JOIN SOP10100 ON SOP10200.SOPTYPE = SOP10100.SOPTYPE AND SOP10200.SOPNUMBE = SOP10100.SOPNUMBE' SELECT @String5 = ' INNER JOIN IV00101 ON SOP10200.ITEMNMBR = IV00101.ITEMNMBR' SELECT @String6 = ' INNER JOIN IV00102 ON SOP10200.ITEMNMBR = IV00102.ITEMNMBR AND IV00102.RCRDTYPE = 2 AND IV00102.LOCNCODE = SOP10200.LOCNCODE' SELECT @String7 = ' WHERE SOP10100.BCHSOURC = '' + @cBatchSource + '' AND SOP10100.BACHNUMB = '' + @cBatchNumber  + '' AND ' SELECT @String8 = '(SOP10100.SOPTYPE = 3 OR SOP10100.SOPTYPE = 5) AND SOP10200.NONINVEN = 0'  SELECT @BigString =   @String1 + @String2  + @String3 + @String4 + @String5 + @String6 + @String7 + @String8 EXEC( @BigString) END    
GO
GRANT EXECUTE ON  [dbo].[sopIVCache] TO [DYNGRP]
GO

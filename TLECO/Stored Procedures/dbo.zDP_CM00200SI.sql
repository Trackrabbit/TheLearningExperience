SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00200SI] (@MerchantID char(17), @DSCRIPTN char(31), @EFTHash char(255), @EFTHashCode char(5), @DATE1 datetime, @TIME1 datetime, @ISOCURRC char(3), @FilePath char(255), @EFTDownLoadFilePath char(255), @EFTProcessedFilePath char(255), @NOTEINDX numeric(19,5), @CURNCYID char(15), @CREATDDT datetime, @MODIFDT datetime, @DEX_ROW_ID int OUT) AS  set nocount on BEGIN INSERT INTO .CM00200 (MerchantID, DSCRIPTN, EFTHash, EFTHashCode, DATE1, TIME1, ISOCURRC, FilePath, EFTDownLoadFilePath, EFTProcessedFilePath, NOTEINDX, CURNCYID, CREATDDT, MODIFDT) VALUES ( @MerchantID, @DSCRIPTN, @EFTHash, @EFTHashCode, @DATE1, @TIME1, @ISOCURRC, @FilePath, @EFTDownLoadFilePath, @EFTProcessedFilePath, @NOTEINDX, @CURNCYID, @CREATDDT, @MODIFDT) SELECT @DEX_ROW_ID = @@IDENTITY END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00200SI] TO [DYNGRP]
GO

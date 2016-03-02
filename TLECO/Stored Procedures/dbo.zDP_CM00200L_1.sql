SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
 CREATE PROC [dbo].[zDP_CM00200L_1] (@MerchantID_RS char(17), @MerchantID_RE char(17)) AS  set nocount on IF @MerchantID_RS IS NULL BEGIN SELECT TOP 25  MerchantID, DSCRIPTN, EFTHash, EFTHashCode, DATE1, TIME1, ISOCURRC, FilePath, EFTDownLoadFilePath, EFTProcessedFilePath, NOTEINDX, CURNCYID, CREATDDT, MODIFDT, DEX_ROW_ID FROM .CM00200 ORDER BY MerchantID DESC END ELSE IF @MerchantID_RS = @MerchantID_RE BEGIN SELECT TOP 25  MerchantID, DSCRIPTN, EFTHash, EFTHashCode, DATE1, TIME1, ISOCURRC, FilePath, EFTDownLoadFilePath, EFTProcessedFilePath, NOTEINDX, CURNCYID, CREATDDT, MODIFDT, DEX_ROW_ID FROM .CM00200 WHERE MerchantID = @MerchantID_RS ORDER BY MerchantID DESC END ELSE BEGIN SELECT TOP 25  MerchantID, DSCRIPTN, EFTHash, EFTHashCode, DATE1, TIME1, ISOCURRC, FilePath, EFTDownLoadFilePath, EFTProcessedFilePath, NOTEINDX, CURNCYID, CREATDDT, MODIFDT, DEX_ROW_ID FROM .CM00200 WHERE MerchantID BETWEEN @MerchantID_RS AND @MerchantID_RE ORDER BY MerchantID DESC END set nocount off    
GO
GRANT EXECUTE ON  [dbo].[zDP_CM00200L_1] TO [DYNGRP]
GO

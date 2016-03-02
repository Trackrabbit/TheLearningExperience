SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
CREATE PROCEDURE [dbo].[SVC_Create_IV_Serial]  @SerialNumber char(21),  @ItemNumber char(31),  @LocationCode char(15),  @unitcost numeric(19,5),  @Sold tinyint As declare @dateseq integer if not exists(select * from IV00200 where ITEMNMBR = @ItemNumber and SERLNMBR =@SerialNumber) begin select @dateseq = (select Max(DTSEQNUM) from IV00200 where ITEMNMBR = @ItemNumber and LOCNCODE = @LocationCode) + 1 select @dateseq  = isnull(@dateseq,1) insert IV00200  select @ItemNumber, @LocationCode, CONVERT(varchar(10),GETDATE(),102) + ' 00:00:00', @dateseq, @SerialNumber, '', '', @unitcost, 1, '', 0, @Sold, 1, '' end    
GO
GRANT EXECUTE ON  [dbo].[SVC_Create_IV_Serial] TO [DYNGRP]
GO

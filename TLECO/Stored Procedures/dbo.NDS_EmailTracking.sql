SET QUOTED_IDENTIFIER OFF
GO
SET ANSI_NULLS ON
GO
Create PROCEDURE [dbo].[NDS_EmailTracking]
 @SOPNUMBE char(21), @SOPTYPE smallint, @TRKNMBR char(165) 
AS
BEGIN
  DECLARE @INTERID char(5), @FILELOCATION varchar(255)
  SET @INTERID='TLECO'
  SET @FILELOCATION = (SELECT TOP 1 NDS_TRKEML_FileLoc FROM MS273528)
  DECLARE @CUSTNMBR char(15), @ADRSCODE char(15), @INET1 char(201), @emailBody nvarchar(4000), @CURNCYID char(15), @SUBTOTAL money, @DISTKNAM money,
          @FRTAMNT money, @MISCAMNT money, @TAXAMNT money, @DOCAMNT money, @PRSTADCD char(15), @PRBTADCD char(15), @SHIPMTHD char(15),
          @SCNTCPRSN char(31), @SADDRESS1 char(31), @SADDRESS2 char(31), @SCITY char(31), @SSTATE char(29), @SZIPCODE char(11), @BCNTCPRSN char(31),
          @BADDRESS1 char(31), @BADDRESS2 char(31), @BCITY char(31), @BSTATE char(29), @BZIPCODE char(11), @CARRIER char(31), @CMPNYNAM char(65),
          @PHONE1 char(21), @WEBADDR char(201), @EMAILFROM char(201), @ORDEREDITEMS char(1000)
  IF ((SELECT TOP 1 MSO_SendEMailAfterTracki FROM MS273528) = 1)
  BEGIN
    SELECT @CUSTNMBR = CUSTNMBR FROM SOP10100 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE
    IF (@@rowcount = 0)
    BEGIN
      RETURN
    END
    IF (LEN(RTRIM(@CUSTNMBR)) = 0)
    BEGIN
      RETURN
    END
    SELECT @ADRSCODE = ADRSCODE FROM RM00101 WHERE CUSTNMBR = @CUSTNMBR
    IF(@@rowcount = 0)
    BEGIN
      RETURN
    END
    SELECT @INET1 = INET1 FROM SY01200 WHERE Master_Type = 'CUS' AND Master_ID = @CUSTNMBR AND ADRSCODE = @ADRSCODE
    IF (@INET1 <> '') --Does customer has email ?
    BEGIN
      SELECT  @CURNCYID = CURNCYID,  @SUBTOTAL = SUBTOTAL,  @DISTKNAM = DISTKNAM,
              @FRTAMNT = FRTAMNT,    @MISCAMNT = MISCAMNT,  @TAXAMNT = TAXAMNT,
              @DOCAMNT = DOCAMNT,    @PRSTADCD = PRSTADCD,  @PRBTADCD = PRBTADCD,
              @SHIPMTHD = SHIPMTHD,  @SCNTCPRSN = CNTCPRSN, @SADDRESS1 = ADDRESS1,
              @SADDRESS2 = ADDRESS2, @SCITY = CITY,         @SSTATE = [STATE],
              @SZIPCODE = ZIPCODE
      FROM SOP10100 WHERE SOPNUMBE = @SOPNUMBE AND SOPTYPE = @SOPTYPE
      IF(@@rowcount > 1)
      BEGIN
        RETURN
      END
      SELECT  @BCNTCPRSN = CNTCPRSN, @BADDRESS1 = ADDRESS1, @BADDRESS2 = ADDRESS2,
              @BCITY = CITY,         @BSTATE = [STATE],       @BZIPCODE = ZIP
      FROM RM00102 WHERE CUSTNMBR = @CUSTNMBR AND ADRSCODE = @PRBTADCD
      IF(@@rowcount = 0)
      BEGIN
        RETURN
      END
      IF(@@rowcount > 1)
      BEGIN
        RETURN
      END
      SELECT @CMPNYNAM = CMPNYNAM, @PHONE1 = PHONE1 FROM DYNAMICS.dbo.[SY01500] WHERE INTERID = @INTERID
      IF(@@rowcount = 0)
      BEGIN
        RETURN
      END
      IF(@@rowcount > 1)
      BEGIN
        RETURN
      END
      SELECT @EMAILFROM = INET1, @WEBADDR = INET2 FROM SY01200 WHERE Master_Type = 'cmp' AND Master_ID = @INTERID AND ADRSCODE = (SELECT LOCATNID FROM DYNAMICS.dbo.[SY01500] WHERE INTERID = @INTERID)
      IF(@@rowcount = 0)
      BEGIN
        RETURN
      END
      IF(@@rowcount > 1)
      BEGIN
        RETURN
      END
      SET @ORDEREDITEMS = dbo.NDS_UDF_GetORDEREDITEMS(@SOPNUMBE, @SOPTYPE, 1)
      IF (@ORDEREDITEMS = 'NONE')
      BEGIN
        RETURN
      END
      EXEC NDS_TRKEML_ReadTextFile @FILELOCATION, @emailBody OUTPUT
      DECLARE @SHIPTOLABEL AS NVARCHAR(255), @NEW_LINE CHAR(2)
      SET @NEW_LINE = char(13) + char(10)
      SET @SHIPTOLABEL = @SCNTCPRSN + @NEW_LINE + @SADDRESS1 + @NEW_LINE
      IF(@SADDRESS2 <> '') 
      BEGIN
        SET @SHIPTOLABEL = @SHIPTOLABEL + @SADDRESS2 + @NEW_LINE
      END
      SET @SHIPTOLABEL = @SHIPTOLABEL + RTRIM(@SCITY) + ',' + RTRIM(@SSTATE) + ' ' + RTRIM(@SZIPCODE)
      DECLARE @BILLTOLABEL AS nvarchar(255)
      SET @BILLTOLABEL = @BCNTCPRSN + @NEW_LINE + @BADDRESS1 + @NEW_LINE
      IF(@BADDRESS2 <> '')
      BEGIN
        SET @BILLTOLABEL = @BILLTOLABEL + @BADDRESS2 + @NEW_LINE
      END
      SET @BILLTOLABEL = @BILLTOLABEL + RTRIM(@BCITY) + ',' + RTRIM(@BSTATE) + ' ' + RTRIM(@BZIPCODE)
      DECLARE @LNKTRK AS nvarchar(255), @PURETRK nvarchar(41), @TRKTOKEN nvarchar(1), @TRKURL nvarchar(201), @SLASH nvarchar(1)
      SET @SLASH = SUBSTRING(@TRKNMBR, 2, 1)
      IF(@SLASH = '/')
      BEGIN
        SET @PURETRK = SUBSTRING(@TRKNMBR, 3, LEN(@TRKNMBR)-2)
        SET @LNKTRK = @PURETRK
        SET @TRKTOKEN = LEFT(@TRKNMBR, 1)
        SELECT @TRKURL = CUSTOMLINKINETADDR FROM SY01201 WHERE CUSTOMLINKPRMPT = 9 AND CUSTOMLINKLBL = @TRKTOKEN AND CUSTOMLINKFIELDVAL = 'ALL'
        IF(@@rowcount > 0) -- Has assigned URL
        BEGIN
          SET @LNKTRK = @PURETRK + ' ' + REPLACE(@TRKURL, '<TrackingNumber>', @PURETRK)
        END
        ELSE
        BEGIN
          SELECT @TRKURL = CUSTOMLINKINETADDR FROM SY01201 WHERE CUSTOMLINKPRMPT = 9 AND CUSTOMLINKLBL = 'Z' AND CUSTOMLINKFIELDVAL = 'ALL'
          IF(@@rowcount > 0) -- Has default URL
          BEGIN
            SET @LNKTRK = @PURETRK + ' ' + REPLACE(@TRKURL, '<TrackingNumber>', @PURETRK)
          END
        END
      END
      ELSE
      BEGIN
        SET @LNKTRK = @TRKNMBR
      END
      DECLARE @ITEMS AS nvarchar(4000)    --Can hold about 11 items
      SET @emailBody = REPLACE(@emailBody, '<OrderNumber>', RTRIM(@SOPNUMBE))
      SET @emailBody = REPLACE(@emailBody, '<SOPSUBTOTAL>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@SUBTOTAL AS money), 1), 12)) --(NDS_UDF_AlignRight( Format(###.##))
      SET @emailBody = REPLACE(@emailBody, '<SOPDiscount>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@DISTKNAM AS money), 1), 12))
      SET @emailBody = REPLACE(@emailBody, '<SOPFreight>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@FRTAMNT AS money), 1), 12))
      SET @emailBody = REPLACE(@emailBody, '<SOPMisc>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@MISCAMNT AS money), 1), 12))
      SET @emailBody = REPLACE(@emailBody, '<SOPTax>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@TAXAMNT AS money), 1), 12))
      SET @emailBody = REPLACE(@emailBody, '<SOPTotal>', dbo.NDS_UDF_AlignRight(CONVERT(nvarchar(12), CAST(@DOCAMNT AS money), 1), 12))
      SET @emailBody = REPLACE(@emailBody, '<ShipToAddress>', @SHIPTOLABEL)
      SET @emailBody = REPLACE(@emailBody, '<BillToAddress>', @BILLTOLABEL)
      SET @emailBody = REPLACE(@emailBody, '<TrackingNumber>', @LNKTRK)
      SET @emailBody = REPLACE(@emailBody, '<MerchantName>', RTRIM(@CMPNYNAM))
      SET @emailBody = REPLACE(@emailBody, '<MerchantPhone>', dbo.NDS_UDF_FormatPhoneNumber(@PHONE1))
      SET @emailBody = REPLACE(@emailBody, '<MerchantWebAddress>', RTRIM(@WEBADDR))
      --Ordered Items
      SET @emailBody = REPLACE(@emailBody, '<OrderLineDetails>', @ORDEREDITEMS)
      --Send email
      IF(@@error = 0)
      BEGIN
        EXEC NDS_Send_cdosysmail @EMAILFROM, @INET1, 'Shipment Confirmation', @emailBody
      END
    END
    ELSE  --ERROR MSG: Customer has no email address assigned
    BEGIN
      print 'no email address'
    END
  END
END
GO
GRANT EXECUTE ON  [dbo].[NDS_EmailTracking] TO [DYNGRP]
GO

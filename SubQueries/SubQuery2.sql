SET STATISTICS IO ON

SELECT ITM.ITEMCODE AS URUN_KODU,
ITM.ITEMNAME AS URUN_ADI,
(SELECT MIN(UNITPRICE) FROM ORDER_DETAILS WHERE ITEM_ID = ITM.ID) as EN_DUSUK_FIYAT,
(SELECT MAX(UNITPRICE) FROM ORDER_DETAILS WHERE ITEM_ID = ITM.ID) as EN_YUKSEK_FIYAT,
(SELECT AVG(UNITPRICE) FROM ORDER_DETAILS WHERE ITEM_ID = ITM.ID) as ORTALAMA_FIYAT,
(SELECT SUM(AMOUNT) FROM ORDER_DETAILS WHERE ITEM_ID = ITM.ID) as TOPLAM_ADET,

(
  SELECT TOP 1 DATEPART(MONTH, O.DATE_) AS AY FROM ORDER_DETAILS OD
  INNER JOIN ORDERS O ON OD.ORDER_ID = O.ID
  WHERE OD.ITEM_ID = ITM.ID
  GROUP BY DATEPART(MONTH, O.DATE_)
  ORDER BY SUM(AMOUNT) DESC
) AS EN_COK_SATILAN_AY

FROM ITEMS ITM
ORDER BY ITM.ITEM_NAME

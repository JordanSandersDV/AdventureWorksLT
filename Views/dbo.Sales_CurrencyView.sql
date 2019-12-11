SET QUOTED_IDENTIFIER, ANSI_NULLS ON
GO
CREATE VIEW [dbo].[Sales.CurrencyView] 
AS SELECT
  Currency_1.CurrencyCode
 ,Currency.Name
 ,Currency.ModifiedDate
 ,CurrencyRate.CurrencyRateID
FROM Sales.CurrencyRate
INNER JOIN Sales.Currency
  ON CurrencyRate.FromCurrencyCode = Currency.CurrencyCode
INNER JOIN Sales.Currency Currency_1
  ON CurrencyRate.FromCurrencyCode = Currency_1.CurrencyCode
GO
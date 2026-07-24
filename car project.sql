Select 
       c.[Car_ID]
      ,c.[Brand]
      ,c.[Model]
      ,c.[Year]
      ,c.[Fuel_Type]
      ,c.[Transmission]
      ,c.[Color]
      ,c.[Owner_Type]
      ,c.[Mileage_kmpl]
      ,c.[Price_Lakh]
      ,[Provider]
      ,[Policy_Number]
      ,[Expiry_Date]
      ,[Status]
      ,[Owner_Name]
      ,[Contact]
      ,[City]
      ,[Purchase_Year]
      ,[Sale_Price_Lakh]
      ,[Sale_Date]
      ,[Buyer_Name] Into Master_Table
from Car as c
left join Insurance
on c.Car_ID=Insurance.Car_ID
left join Owners
on c.Car_ID=Owners.Car_ID
left join Sales
on Sales.Car_ID=c.Car_ID
left join Service_History
on Service_History.Car_ID=c.Car_ID



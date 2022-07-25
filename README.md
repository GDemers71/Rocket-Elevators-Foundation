
link to the youtube video https://youtu.be/WOLErWLOXLM

Postman link to the query
https://www.getpostman.com/collections/f5d96eab48c383dd822b

exemple of query #1

```
{
  intervention:allFactInterventions(id: 1){
    id
    address
    interventionStartedAt
    interventionEndedAt
    Result
    EmployeeID
    BuildingID
    BatteryID
    ColumnID
    ElevatorID
		Status
    
    
  }
}

```
Should return ;
```
{
  "data": {
    "intervention": [
      {
        "id": "3",
        "address": "560 Penstock Drive",
        "interventionStartedAt": "2022-01-08 00:00:00 UTC",
        "interventionEndedAt": "2021-11-19 00:00:00 UTC",
        "Result": "Incomplete",
        "EmployeeID": "3",
        "BuildingID": "3",
        "BatteryID": "15",
        "ColumnID": "15",
        "ElevatorID": "15",
        "Status": "Interrupted"
      }
    ]
  }
}
```
exemple of query #3

```
{
  allFactInterventionsByEmployee(employeeid: 1){
    id
    building{
      id
      buildingDetails{
        id
        createdAt
        updatedAt
        key
        value
      }
    }
  }
}
  
```  
should return ;
```
{
  "data": {
    "allFactInterventionsByEmployee": [
      {
        "id": "1",
        "building": {
          "id": "1",
          "buildingDetails": [
            {
              "id": "1",
              "createdAt": "2022-07-22 19:15:35 UTC",
              "updatedAt": "2022-07-22 19:15:35 UTC",
              "key": "Excepturi minima maiores facere.",
              "value": "Hic non."
            }
          ]
        }
      }
    ]
  }
}
```

dependcies ;
to make the graphQL api work you will need to install the following gems ;
gem 'graphql', '1.11.6'
gem 'graphiql-rails', '1.7.0', group: :development
$Header = @{
        "authorization" = "Bearer $token"
    }

$Body = @{
    Cook = "Barbara"
    Meal = "Pizza"
}
 
$Parameters = @{
    Method = "POST"
    Uri =  "https://4besday4.azurewebsites.net/api/AddMeal"
    Body = ($Body | ConvertTo-Json) 
    ContentType = "application/json"
    Headers = $Header
}
Invoke-RestMethod @Parameters
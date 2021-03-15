
 
$Parameters = @{
    Method = "Get"
    Uri =  "https://localhost:5001/weatherforecast"
    ContentType = "application/json"
}
$Response = Invoke-RestMethod @Parameters

$Response



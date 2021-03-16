
param(
    [Parameter(Mandatory = $true)]
    [String]$Content

)

$Account = "jiwagTest"
$Sig = "jiwagsig"

$Header = @{
        "SmsProvider" = "967584f9-af0b-424c-9b24-2c1799ef99d2"
        "Account" = $Account
    }

$MessageBody = @{
    CandidateSig = $Sig
    Text = $Content
}

$Body = @{
    PhoneNumber =   @("18321676517")
    Extend = "01"
    MessageBody = $MessageBody 
    CorrelationId = (New-Guid).toString()
}
 
$Parameters = @{
    Method = "POST"
    Uri =  "https://localhost:5001/internalservices/sms/txts"
    Body = ($Body | ConvertTo-Json) 
    ContentType = "application/json"
    Headers = $Header
}
Invoke-RestMethod @Parameters
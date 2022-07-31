# Thanks to F31-code ( https://github.com/F31-code ) for helping with this
function displayLogin
{
    param (
        [string]$Title = 'CKS.GOV LOGIN'
    )
    
    Write-Host "====== $Title ======"

    Write-Host "1) Email"
    Write-Host "2) Password"
    Write-Host "USERNAME IS FOR ACCOUNT CREATION ONLY"
    Write-Host "3) Username"
    Write-Host "4) Logout"
    Write-Host "5) Press '5' to exit"
}
function checkMate
{
    param (
        [string]$Mtitle = 'EMAIL'
    )
    cls
    Write-Host "====== $Mtitle ======"

    $mailer = Read-Host "Type your email: "
    cls

    Write-Host "Welcome Back $mailer"
    displayLogin
}
do
{
    displayLogin
    $input = Read-Host "Choose an Option - Once logged, Script will continue"
    switch ($input)
    {
        '1'{
            cls
            checkMate
        } '2'{
            cls
            'pepo'
        } '3'{
            cls
            'Third Option'
        } '4'{
            cls
            'Fourth Option'
        } '5'{
            return
        }
    }
    pause
}
until ($input -eq 's')

$ServiceName = 'service1','service2','service3'
$ExitCode = 0

foreach ($i in $ServiceName ) {
    $status = (Get-Service -Name $i).Status
    if ($status -ne "Running" ) {
        $ExitCode = 1
    }
}

if ($ExitCode -eq 0) {
	
    Write-Output "OK : All Services Running: $($ServiceName -join ', ')"
    Exit(0)
} 
else {

    $downServices = foreach ($i in $ServiceName ) {
        $status = (Get-Service -Name $i).Status
        if ($status -ne "Running" ) {
            $i
        }
    }
    Write-Output "Critical: Service(s) stopped: $($downServices -join ', ')"
    Exit(1)
}

New-Item build -type directory
Set-Location -Path build

$FRED_STATUS="True"
if ($Env:VS_VERSION -eq "10") {
    $FRED_STATUS="False"
}

"cmake -DFSO_BUILD_FRED2=$FRED_STATUS -DFSO_USE_SPEECH=False -DFSO_USE_VOICEREC=False -G '$Env:CMAKE_GENERATOR' .."
cmake -DFSO_BUILD_FRED2=$FRED_STATUS -DFSO_USE_SPEECH=False -DFSO_USE_VOICEREC=False -G "$Env:CMAKE_GENERATOR" ..
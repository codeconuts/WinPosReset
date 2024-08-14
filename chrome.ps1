$null = New-Item -Force "$ENV:LocalAppData\Google\Chrome\User Data\Default\Preferences" -Value ((Get-Content "$ENV:LocalAppData\Google\Chrome\User Data\Default\Preferences") -replace '(,"window_placement":{"bottom":[0-9]+,"left":[0-9]+,"maximized":(true|false),"right":[0-9]+,"top":[0-9]+,"work_area_bottom":[0-9]+,"work_area_left":[0-9]+,"work_area_right":[0-9]+,"work_area_top":[0-9]+})*(,"window_placement_popup":{"bottom":[0-9]+,"left":[0-9]+,"maximized":(true|false),"right":[0-9]+,"top":[0-9]+,"work_area_bottom":[0-9]+,"work_area_left":[0-9]+,"work_area_right":[0-9]+,"work_area_top":[0-9]+})*', '' | Out-String)